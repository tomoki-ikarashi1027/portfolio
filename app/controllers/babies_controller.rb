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
		@babies = Baby.all
	    @body_weight = BodyWeight.new
	end
	def create
		baby = Baby.new(baby_params)
		baby.customer_id = current_customer.id
	    if baby.save
		   redirect_to babies_path
		else render :new
		end
	end
	def edit
		@baby = Baby.find(params[:id])
	end
	def update
		@baby = Baby.find(params[:id])
		if @baby.update(baby_params)
			redirect_to edit_baby_path(@baby.id)
		else render :edit
		end
	end
	def destroy
		@baby = Baby.find(params[:id])
		@baby.destroy
		redirect_to babies_path
	end
	def history
		@baby = Baby.find(params[:id])
		@date = params[:date] || Time.zone.today
		@body_temperatures = BodyTemperature.where(created_at: @date.in_time_zone.all_day).where(baby_id: @baby).order('body_temperatures.created_at asc')
		@body_weights = BodyWeight.where(created_at: @date.in_time_zone.all_day).where(baby_id: @baby).order('body_weights.created_at asc')
		@excretions = Excretion.where(created_at: @date.in_time_zone.all_day).where(baby_id: @baby).order('excretions.created_at asc')
		@milk_powders = MilkPowder.where(created_at: @date.in_time_zone.all_day).where(baby_id: @baby).order('milk_powders.created_at asc')
		@mother_milks = MotherMilk.where(created_at: @date.in_time_zone.all_day).where(baby_id: @baby).order('mother_milks.created_at asc')
		@sorted = (@mother_milks + @body_weights + @excretions + @milk_powders + @mother_milks).sort_by {|record| record.created_at}
	end
	private
	def baby_params
		params.require(:baby).permit(:sex, :birth, :baby_name, :customer_id)
 	end
end

