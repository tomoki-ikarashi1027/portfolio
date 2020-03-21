class ExcretionsController < ApplicationController
	before_action :authenticate_customer!
	def new
		@baby = Baby.find(params[:baby_id])
		@excretion = Excretion.new
		@enum = Excretion.onlies.keys
	end
	def create
		@baby = Baby.find(params[:baby_id])
		# @excretion = current_user.excretions.build(excretions_params)
		@excretion = @baby.excretions.new(excretion_params)
		@excretion.save
		redirect_to  baby_path(@baby)
	end
	def edit
		@excretion = Excretion.find(params[:baby_id])
	end
	def update
	    @baby = Baby.find(params[:baby_id])
		@excretion = Excretion.find(params[:baby_id])
		@excretion.save
		redirect_to  baby_path(@baby)
	end
	def destroy
		@excretion = Excretion.find(params[:baby_id])
		@excretion.destroy
		redirect_back(fallback_location: root_path)
	end
	private
	def excretion_params
		params.require(:excretion).permit(:customer_id, :baby_id, :body, :only ,:create_time )
	end
end