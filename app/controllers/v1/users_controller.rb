module V1
  class UsersController < ApplicationController
    # before_action :authenticate_user!, only: [:destroy, :update]
    load_and_authorize_resource

    def index
      render json: @users, adapter: :json
    end

    def show
      @posts = @user.posts.all
      render json: {user: @user, posts: @posts}, adapter: :json
    end

    # POST
    # Create an user
    """
    def create
      @user = User.new(user_params)

      if @user.save!
        render json: @user, serializer: V1::SessionSerializer, root: nil
      else
        render json: { error: t('user_create_error') }, status: :unprocessable_entity
      end
    end
    """

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

    def user_params
      params.require(:user).permit(:id, :name, :image, :role, :document, :l_price)
    end
  end
end
