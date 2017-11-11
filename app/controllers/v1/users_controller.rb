module V1
  class UsersController < ApplicationController
    skip_before_action :authenticate_user_from_token!# , only: [:create]
    before_action :set_user, only: [:show, :destroy, :update]

    def index
      users = User.all
      render json: users, adapter: :json
    end

    def show
      @posts = @user.posts.all
      render json: {user: @user, posts: @posts}, adapter: :json
    end

    # POST
    # Create an user
    def create
      @user = User.new user_params

      if @user.save!
        render json: @user, serializer: V1::SessionSerializer, root: nil
      else
        render json: { error: t('user_create_error') }, status: :unprocessable_entity
      end
    end

    def update
      if @user.update(user_params)
        render json: @user, adapter: :json, status: 200
      else
        render json: {error: @user.errors}, status: 422
      end
    end

    def destroy
      @user.destroy
      head 204
    end

    private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :email, :password)
    end
  end
end