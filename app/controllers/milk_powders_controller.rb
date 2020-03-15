class MilkPowdersController < ApplicationController
	def new
		@baby = Baby.find(params[:baby_id])
		@milk_powder = MilkPowder.new
	end
	def create
		@baby = Baby.find(params[:baby_id])
		@milk_powder = @baby.milk_powders.new(milk_powder_params)
		@milk_powder.save
		redirect_to edit_baby_milk_powders_path(@baby)
	end
	def edit
		@milk_powder = MilkPowder.find(params[:baby_id])
	end
	def update
		@baby = Baby.find(params[:baby_id])
		@milk_powder = MilkPowder.find(params[:baby_id])
		@milk_powder.update(milk_powder_params)
		redirect_to baby_path(@baby)
	end
	def destroy
	end
	private
	def milk_powder_params
		params.require(:milk_powder).permit(:baby_id, :body)
	end
end