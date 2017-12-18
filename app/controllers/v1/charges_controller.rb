module V1
  class ChargesController < ApplicationController
    # before_action :authenticate_user!

    def new
    end

    def create
      byebug
      # POSTで値段、user情報、amount、決済先情報が必要
      @amount = params[:l_price]
      @application_fee = (@amount * 0.1).to_i
      @user = User.find_by(id: params[:user_id])

      if @user.stripe_charge_id.blank?
        customer = Stripe::Customer.create(
        :email => params[:email],
        :source => params[:id]
        )

        @user.stripe_charge_id = customer.id
        @user.save
      end

      charges = Stripe::Charge.create({
          :customer => @user.stripe_charge_id,
          :amount => @amount,
          :description => 'Question charge',
          :currency => 'jpy',
          :application_fee => @application_fee
          }, :stripe_account => @user.stripe_uid
      )

    rescue Stripe::CardError => e
      render json: {error: e.message}, status: 422
    end
  end
end

