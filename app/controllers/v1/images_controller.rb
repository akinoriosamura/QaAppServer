module V1
  class ImagesController < ApplicationController
    before_action :authenticate_user!
    def show
      if Image.find_by(user_id: params[:id])
        @image = Image.find_by(user_id: params[:id])
        send_data @image.profile_image, :type => 'image/jpg,image/jpeg,image/png,image/gif', :disposition => 'inline'
      end
    end

    def update
      raise ArgumentError, 'invalid params' if image_params[:profile_image].blank?
      @user = User.find_by(id: params[:id])
      @user.profile_image = image_params[:profile_image]
      @user.save!

      @user = User.find_by(id: params[:id])
      @user.image = @user.profile_image.url
      @user.save!

      render json: {
          profile_image: @user.profile_image,
          image: @user.image
      }
    end

    private

    def image_params
      params.require(:image).permit(:profile_image)
    end
  end
end
