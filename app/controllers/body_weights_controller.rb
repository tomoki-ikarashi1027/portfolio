class BodyWeightsController < ApplicationController
	before_action :authenticate_customer!
	def new
		@baby = Baby.find(params[:baby_id])
		@body_weight = BodyWeight.new
	end
	def create
		@baby = Baby.find(params[:baby_id])
		@body_weight = @baby.body_weights.new(body_weight_params)
		@body_weight.save
		redirect_to edit_baby_body_weights_path(@baby)
	end
	def edit
		@body_weight = BodyWeight.find(params[:baby_id])
	end
	def update
		@baby = Baby.find(params[:baby_id])
		@body_weight = BodyWeight.find(params[:baby_id])
		if @body_weight.update(body_weight_params)
			redirect_to baby_path(@baby)
		end
	end
	def destroy
	end
	private
	def body_weight_params
		params.require(:body_weight).permit(:baby_id, :body, :create_time)
	end
end
