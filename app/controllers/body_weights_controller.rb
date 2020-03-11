class BodyWeightsController < ApplicationController
	before_action :authenticate_customer!
	def new
		@baby = Baby.find(params[:baby_id])
		@body_weight = BodyWeight.new
	end
	def create
		@baby = Baby.find(params[:baby_id])
		@body_weight = current_customer.body_weights.new(body_weight_params)
		# @body_weight = BodyWeight.new(body_weight_params)
		@body_weight.baby_id = baby.id
		@body_weight.save
		redirect_to edit_body_weight_path(@body_weight.id)
	end
	def edit
		@body_weight = BodyWeight.find(params[:id])
	end
	def update
		@body_weight = BodyWeight.find(params[:id])
		if @body_weight.update(body_weight_params)
			redirect_to edit_body_weight_path(@body_weight.id)
		end
	end
	def destroy
	end
	private
	def body_weight_params
		params.require(:body_weight).permit(:customer_id, :baby_id, :body, :create_time)
	end
end

	 # post_image = PostImage.find(params[:post_image_id])
	 # 	comment = current_user.post_comments.new(post_comment_params)
	 # 	comment.post_image_id = post_image.id
	 # 	comment.save
	 # 	redirect_to post_image_path(post_image)