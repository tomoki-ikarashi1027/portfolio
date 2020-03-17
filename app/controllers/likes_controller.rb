class LikesController < ApplicationController
	def create
		comment = Comment.find(params[:comment_id])
		like = current_customer.likes.new(comment_id: comment.id)
		like.save
		redirect_back(fallback_location: root_path)
	end
	def destroy
		comment = Comment.find(params[:comment_id])
		like = current_customer.likes.find_by(comment_id: comment.id)
		like.destroy
		redirect_back(fallback_location: root_path)
	end
end