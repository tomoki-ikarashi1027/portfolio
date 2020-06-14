class Admins::BabyImageCommentsController < ApplicationController

	def index
		@baby_image_comments = BabyImageComment.all
	end
	def destroy
		@baby_image_comment = BabyImageComment.find(params[:id])
		@baby_image_comment.destroy
		redirect_to admins_baby_image_comments_path
	end
end
