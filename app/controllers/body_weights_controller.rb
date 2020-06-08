class BodyWeightsController < ApplicationController

	def new
		@baby = Baby.find(params[:baby_id])
		@body_weight = BodyWeight.new
	end
	def create
		@baby = Baby.find(params[:baby_id])
		@body_weight = @baby.body_weights.new(body_weight_params)
		if @body_weight.save
		   redirect_to baby_path(@baby)
		else render :new
		end
	end
	def edit
		@body_weight = BodyWeight.find(params[:baby_id])
	end
	def update
		@baby = Baby.find(params[:id])
		@body_weight = BodyWeight.find(params[:baby_id])
		if @body_weight.update(body_weight_params)
			redirect_to  history_baby_path(@baby)
		else render :edit
		end
	end
	def destroy
		@body_weight = BodyWeight.find(params[:baby_id])
		@body_weight.destroy
		redirect_back(fallback_location: root_path)
	end
	private
	def body_weight_params
		params.require(:body_weight).permit(:baby_id, :body, :create_time)
	end
end
