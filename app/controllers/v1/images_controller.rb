module V1
  class ImagesController < ApplicationController
    # before_action :authenticate_user!
    def create
      # this controller is related with confog/intializer/carrierwave.rb and config/setting.yml
      byebug
      raise ArgumentError, 'invalid params' if params[:image].blank? || params[:name].blank?

      imageFile = ImageFile.create(image: params[:image])

      imageFile.title = params[:title]
      imageFile.name = params[:name]

      imageFile.save!

      render json: {
          title: imageFile.title,
          name: imageFile.name,
          image: imageFile.image.url
      }
    end
  end
end