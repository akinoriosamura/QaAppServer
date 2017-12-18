module V1
  class ImagesController < ApplicationController
    def show
      if Image.find_by(user_id: params[:id])
        @image = Image.find_by(user_id: params[:id])
        send_data @image.file, :type => 'image/jpg,image/jpeg,image/png,image/gif', :disposition => 'inline'
      end
    end

    def update
      upload_file = image_params[:file]
      @image = {}
      if upload_file != nil
        @image[:user_id] = image_params[:user_id]
        @image[:filename] = image_params[:filename]
        @image[:file] = upload_file.read
      end
      if Image.find_by(user_id: image_params[:user_id])
        @profile_image = Image.find_by(user_id: image_params[:user_id])
        @profile_image.update(@image)
        render json: @profile_image, adapter: :json, status: 200
      else
        @image = Image.new(@image)
        @image.save
        render json: @image, adapter: :json, status: 200
      end
      rescue => e
        render json: {error: e.message}
    end

    private

    def image_params
      params.require(:image).permit(:user_id, :filename, :file)
    end
  end
end
