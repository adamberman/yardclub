module Api
	class PostsController < ApplicationController
		def index
			@posts = Post.order(:created_at).limit(25)
			render :index
		end

		def create
			@post = Post.new(post_params)

			if @post.save
				render :show, status: :created
			else
				render json: @post.errors.full_messages, status: :unprocessable_entity
			end
		end

		def show
			@post = Post.find(params[:id])
			render :show
		end

		def update
			@post = Post.find(params[:id])

			if @post.update_attributes(post_params)
				render :show, status: :OK
			else
				render json: @post.errors.full_messages, status: :unprocessable_entity
			end
		end

		def destroy
			@post = Post.find(params[:id])
			@post.destroy
			render json: {}
		end

		private

		def post_params
			params.require(:post).permit(:author_id, :title, :content)
		end
	end
end
