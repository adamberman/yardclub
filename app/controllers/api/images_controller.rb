module Api
	class ImagesController < ApplicationController

		def create
			@image = Image.new(image_params)

			if @image.save
				render :show, status: :created
			else
				render json: @image.errors.full_messages, status: :unprocessable_entity
			end
		end

		def destroy
			@image = Image.find(params[:id])
			@image.destroy
			render json: {}
		end

		private

		def image_params
			params.require(:image).permit(:url, :post_id)
		end
	end
end
