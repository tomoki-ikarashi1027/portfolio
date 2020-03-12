class MilkPowdersController < ApplicationController
	def new
		@baby = Baby.find(params[:baby_id])
		@milk_powder = MilkPowder.new
	end
	def create
		@baby = Baby.find(params[:baby_id])
		@milk_powder = current_customer.milk_powders.new(milk_powder_params)
		@milk_powder.baby_id = baby.id
		@milk_powder.save
		redirect_to edit_milk_powder_path(milk_powder.id)
	end
	def edit
		@milk_powder = MilkPowder.find(params[:id])
	end
	def update
		@milk_powder = MilkPowder.find(params[:id])
		@milk_powder.update(milk_powder_params)
		redirect_to edit_milk_powder_path(milk_powder.id)
	end
	def destroy
	end
	private
	def milk_powder_params
		params.require(:milk_powder).permit(:baby_id, :customer_id, :body)
	end
end