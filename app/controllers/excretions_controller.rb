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
		@excretion = @baby.excretion.new(excretion_params)
		@excretion.save
		redirect_to  edit_baby_excretions_path(@excretion.id)
	end
	def edit
		@excretion = Excretion.find(params[:baby_id])
	end
	def update
		@excretion = Excretion.find(params[:baby_id])
		@excretion.save
		redirect_to  baby_path(@excretion.id)
	end
	def destroy
		@excretion = Excretion.find(params[:baby_id])
		@excretion.destroy
	end
	private
	def excretion_params
		params.require(:excretion).permit(:customer_id, :baby_id, :body, :only ,:create_time )
	end
end