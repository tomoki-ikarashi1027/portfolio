class BabiesController < ApplicationController
	before_action :authenticate_customer!
	def index
		@babies = current_customer.babies
	end
	def new
		@baby = Baby.new
	end
	def show
		@baby = Baby.find(params[:id])
		@babys = Baby.all
	    @body_weight = BodyWeight.new
	end
	def create
		@baby = Baby.new(baby_params)
		@baby.customer_id = current_customer.id
	    @baby.save
			redirect_to edit_baby_path(@baby.id)
	end
	def edit
		@baby = Baby.find(params[:id])
	end
	def update
		@baby = Baby.find(params[:id])
		if @baby.update(baby_params)
			redirect_to edit_baby_path(@baby.id)
		end
	end
	private
	def baby_params
		params.require(:baby).permit(:sex, :birth, :baby_name, :customer_id)
 	end
end