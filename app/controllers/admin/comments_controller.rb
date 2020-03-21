class Admin::CommentsController < ApplicationController
	before_action :authenticate_admin!
	def index
		@comments = Comment.all
	end
	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy
	end
	private
	def comment_params
		params.require(:comment).permit(:customer_id, :body)
	end
end
