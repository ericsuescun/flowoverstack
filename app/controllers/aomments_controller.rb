class AommentsController < ApplicationController
	
	def create
		answer.aomments.create(aomments_params)

		redirect_to question
	end

	private
	  def aomments_params
	    params.require(:aomment).permit(:body).merge(user: current_user)
	  end

end