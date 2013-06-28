module FileUploader
  class ImagesController < ApplicationController
    def create
      @image = Image.create!(image_params)
    end

    def update
      @image = Image.create!(image_params)
    end

    def destroy
      render json: Image.find(params[:id]).destroy
    end

    private
      def image_params
        params.require(:image).permit(:file)
      end
  end
end