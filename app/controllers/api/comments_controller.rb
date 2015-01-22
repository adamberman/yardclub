module Api
	class CommentsController < ApplicationController
		def index
			@post = Post.find(params[:post_id])
			@comments = @post.comments
			render :index
		end

		def create
			@comment = Comment.new(comment_params)

			if @comment.save
				render :show, status: :created
			else
				render json: @comment.errors.full_messages, status: :unprocessable_entity
			end
		end

		def destroy
			# if i were going to make sure that you could only
			# destroy comments you've created, i would build auth
			# (which I believe is beyond the scope of this challenge)
			# and include a current_user method. i would then also include
			# an author column for comments as well, and only allow 'destroy'
			# when author == current_user. for examples of auth that i've
			# built in the past, check out the user model and user/session/application
			# controllers in my TVBNB repo: github.com/adamberman/tvbnb

			@comment = Comment.find(params[:id])
			@comment.destroy

			# dependent: :destroy option in model destroys all nested comments as well
			render json: {}
		end

		private

		def comment_params
			params.require(:comment).permit(:commentable_type, :commentable_id, :content)
		end
	end
end
