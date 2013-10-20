class CommentsController < ApplicationController
	def create 

	end
	def comment_params
		prms = params.require(:comment).permit!
	end
	def find_post
		@post = Post.find(params([:post_id]))
	end
end
