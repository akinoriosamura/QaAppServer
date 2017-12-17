module V1
  class ImagesController < ApplicationController
    def create
      upload_file = image_params[:file]
      @image = {}
      if upload_file != nil
        @image[:filename] = upload_file.original_filename
        @image[:file] = upload_file.read
      end
      @image = Image.new(@image)
      @image.save
      render json: @image, adapter: :json, status: 200
      rescue => e
        render json: {error: e.message}
    end

    private
    def image_params
      params.require(:image).permit(:filename, :file)
    end
  end
end
