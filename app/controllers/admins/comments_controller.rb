class Admins::CommentsController < ApplicationController
	before_action :authenticate_admin!
	def index
		@comments = Comment.all.page(params[:page]).per(10).reverse_order
	end
	def destroy
		@comment = Comment.find(params[:id])
		@problem = @comment.problem
		@comment.destroy
		redirect_to admins_comments_path
	end
	private
	def comment_params
		params.require(:comment).permit(:customer_id, :body)
	end
end
