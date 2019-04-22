class CommentsController < ApplicationController
	#Require authentication first!!!

	def create
	  @comment = @commentable.comments.new(comment_params)
	  @comment.user = current_user
	  @commentable.save
	  redirect_to @commentable, notice: "Comentario publicado!"
	end

	private
	  def comment_params
	    params.require(:comment).permit(:body).merge(user: current_user)
	  end
end
