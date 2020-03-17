class CommentsController < ApplicationController
	before_action :authenticate_customer!
	def create

		@problem = Problem.find(params[:comment][:problem_id])
		@comment = @problem.comments.new(comment_params)
		@comment.customer_id = current_customer.id
		@comment.save
		redirect_back(fallback_location: root_path)
	end
	def destroy
		@comment = Comment.find(params[:id])
		@problem = @comment.problem
		@comment.destroy
		redirect_back(fallback_location: root_path)

	end
	private
	def comment_params
		params.require(:comment).permit(:customer_id, :problem_id, :body)
	end
end