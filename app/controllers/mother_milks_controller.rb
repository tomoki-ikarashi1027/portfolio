class MotherMilksController < ApplicationController
	def new
		@baby = Baby.find(params[:baby_id])
		@mother_milk = MotherMilk.new
	end
	def create
		@baby = Baby.find(params[:baby_id])
		@mother_milk = @baby.mother_milks.new(mother_milk_params)
		@mother_milk.save
		redirect_to baby_path(@baby)
	end
	def edit
		@mother_milk = MotherMilk.find(params[:baby_id])
	end
	def update
		@baby = Baby.find(params[:id])
		@mother_milk = MotherMilk.find(params[:baby_id])
		@mother_milk.update(mother_milk_params)
		redirect_to  history_baby_path(@baby)
	end
	def destroy
		@mother_milk = MotherMilk.find(params[:baby_id])
		@mother_milk.destroy
		redirect_back(fallback_location: root_path)
	end

	private
	def mother_milk_params
		params.require(:mother_milk).permit(:baby_id, :body)
	end
end