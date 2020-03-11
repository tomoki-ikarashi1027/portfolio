class SelectBabiesController < ApplicationController
	before_action :authenticate_customer!
	def index
		@babies = Baby.all
	end
	def create
		@select_baby = SelectBaby.new(select_baby_params)
		@select_baby.baby_id = current_customer.select_baby.id
		@select_baby.save
		redirect_to root_path
	end
	def destroy
		@select_baby = SelectBaby.find(params[:id])
		@select_baby.destroy
		redirect_to root_path
	end
	private
	def select_baby_params
		params.require(:select_baby).permit(:customer_id, :baby_id)
	end
end
