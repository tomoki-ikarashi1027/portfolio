class MotherMilksController < ApplicationController
	def new
		@baby = Baby.find(params[:baby_id])
		@mother_milk = MotherMilk.new
	end
	def create
		@baby = Baby.find(params[:baby_id])
		@mother_milk = current_customer.mother_milk.new(mother_milk_params)
		@mother_milk.baby_id = baby.id
		@mother_milk.save
		redirect_to edit_mother_milk_path(@mother_milk.id)
	end
	def edit
		@mother_milk = MotherMilk.find(params[:id])
	end
	def update
		@mother_milk = MotherMilk.find(params[:id])
		@mother_milk.update(mother_milk_params)
		redirect_to edit_mother_milk_path(@mother_milk.id)
	end
	def destroy
	end

	private
	def mother_milk_params
		params.require(:mother_milk).permit(:baby_id, :customer_id, :body)
	end
end