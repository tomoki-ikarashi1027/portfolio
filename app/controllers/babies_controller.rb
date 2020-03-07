class BabiesController < ApplicationController
	def new
		@baby = Baby.new
	end
	def show
	end
	def create
		@baby = Baby.new(babies_params)
	    @baby.save
			redirect_to edit_baby_path(@baby.id)
	end
	def edit
		@baby = Baby.find(params[:id])
	end
	def update
		@baby = Baby.find(params[:id])
		if @baby.update(babies_params)
			redirect_to edit_baby_path(@baby.id)
		end
	end
	private
	def babies_params
		params.require(:baby).permit(:sex, :birth, :baby_name)
 end
end