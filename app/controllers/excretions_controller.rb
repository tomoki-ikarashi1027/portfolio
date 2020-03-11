class ExcretionsController < ApplicationController
	before_action :authenticate_customer!
	def new
		@excretion = Excretion.new
		@enum = Excretion.onlies.keys
	end
	def create
		# @excretion = current_user.excretions.build(excretions_params)
		@excretion = Excretion.new(excretion_params)
		@excretion.baby_id  = current_customer.select_baby.id
		@excretion.save
		redirect_to  edit_excretion_path(@excretion.id)
	end
	def edit
		@excretion = Excretion.find(params[:id])
	end
	def update
		@excretion = Excretion.find(params[:id])
		@excretion.save
		redirect_to  edit_excretion_path(@excretion.id)
	end
	def destroy
		@excretion = Excretion.find(params[:id])
		@excretion.destroy
	end
	private
	def excretion_params
		params.require(:excretion).permit(:customer_id, :baby_id, :body, :only ,:create_time )
	end
end