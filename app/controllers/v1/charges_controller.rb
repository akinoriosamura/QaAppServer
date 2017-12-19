module V1
  class ChargesController < ApplicationController
    before_action :authenticate_user!

    def new
    end

    def create
      @user = User.find_by(id: params[:user_id])

      if @user.stripe_charge_id.blank?
        customer = Stripe::Customer.create(
        :email => params[:email],
        :source => params[:id]
        )

        @user.stripe_charge_id = customer.id
        @user.save
      end
    rescue Stripe::CardError => e
      render json: {error: e.message}, status: 422
    end

    def charge
      # { user_id: post_user_id, price: price, specialist_id: specialist_id }
      @amount = params[:price]
      @application_fee = (@amount * 0.1).to_i
      @questioner = User.find_by(id: params[:post_user_id])
      @specialist = User.find_by(id: params[:specialist_id])

      charges = Stripe::Charge.create({
          :customer => @questioner.stripe_charge_id,
          :amount => @amount,
          :description => 'Question charge',
          :currency => 'jpy'
          :application_fee => @application_fee
          }, :stripe_account => @specialist.stripe_uid
      )
    rescue Stripe::CardError => e
      render json: {error: e.message}, status: 422
    end
  end
end

