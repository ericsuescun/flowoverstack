class CommentsController < ApplicationController
	#Require authentication first!!!
	before_action :find_commentable, only: :create

	def create
	  @commentable.comments.build(comment_params)
	  @commentable.save

	  @comment.user = current_user
	  redirect_to @commentable, notice: "Comentario publicado!"
	end

	private
	  def comment_params
	    params.require(:comment).permit(:body, :answer_id).merge(user: current_user)
	  end

	  def find_commentable
	    if params[:answer_id]
	      @commentable = Comment.find_by_id(params[:answer_id]) 
	    elsif params[:question_id]
	      @commentable = Post.find_by_id(params[:question_id])
	    end
	  end

end
