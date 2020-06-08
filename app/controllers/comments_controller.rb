class CommentsController < ApplicationController

	def create
		@problem = Problem.find(params[:comment][:problem_id])
		@comment = @problem.comments.new(comment_params)
		@comment.customer_id = current_customer.id
		# @comment.score = Language.get_data(params[:comment][:body] )
		if@comment.save
		  redirect_to problem_path(@problem)
		else
		@comments = Comment.where(problem_id: @problem.id)
		render template: "problems/show"
		end
	end
	def destroy
		@comment = Comment.find(params[:id])
		@problem = @comment.problem
		@comment.destroy
		redirect_to problem_path(@problem)
	end
	private
	def comment_params
		params.require(:comment).permit(:customer_id, :problem_id, :body)
	end
end