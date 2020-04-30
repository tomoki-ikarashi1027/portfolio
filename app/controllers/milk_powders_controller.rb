class MilkPowdersController < ApplicationController
	before_action :authenticate_customer!
	def new
		@baby = Baby.find(params[:baby_id])
		@milk_powder = MilkPowder.new
	end
	def create
		@baby = Baby.find(params[:baby_id])
		@milk_powder = @baby.milk_powders.new(milk_powder_params)
		if@milk_powder.save
		redirect_to baby_path(@baby)
		else render :new
		end
	end
	def edit
	    @baby = Baby.find(params[:baby_id])
		@milk_powder =  @baby.MilkPowder.find(params[:baby_id])
	end
	def update
		@baby = Baby.find(params[:id])
		@milk_powder = MilkPowder.find(params[:baby_id])
		# binding.pry
		if@milk_powder.update(milk_powder_params)
		   redirect_to  history_baby_path(@baby)
		else render :edit
		end
	end
	def destroy
		@milk_powder = MilkPowder.find(params[:baby_id])
		@milk_powder.destroy
		redirect_back(fallback_location: root_path)
	end
	private
	def milk_powder_params
		params.require(:milk_powder).permit(:baby_id, :body)
	end
end