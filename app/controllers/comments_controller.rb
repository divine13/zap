class CommentsController < ApplicationController
	before_filter :authenticate_user!
	before_filter :find_post
	def create 
		@comment = @post.comments.build(comment_params)
		if @comment.save 
			flash[:success] = "thank you for commenting"
			redirect_to([ @post]) #change to comment if it does not work
		else 
			flash[:error] = "sorry could not comment"
			render template: 'posts/show'
			#render @post
		end
	end
	def comment_params
		prms = params.require(:comment).permit!
		prms.merge!(user: current_user)
	end
	def find_post
		@post = Post.find(params[:post_id])
	end
end
