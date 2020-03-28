class BodyTemperaturesController < ApplicationController
	before_action :authenticate_customer!
	def new
		@baby = Baby.find(params[:baby_id])
		@body_temperature = BodyTemperature.new
	end
	def create
		@baby = Baby.find(params[:baby_id])
		@body_temperature = @baby.body_temperatures.new(body_temperature_params)
		if@body_temperature.save
		  redirect_to  baby_path(@baby)
		else render :new
		end
	end
	def edit
		@body_temperature = BodyTemperature.find(params[:baby_id])
	end
	def update
		@baby = Baby.find(params[:id])
		@body_temperature = BodyTemperature.find(params[:baby_id])
		if @body_temperature.update(body_temperature_params)
			redirect_to  history_baby_path(@baby)
		else render :edit
	    end
    end
	def destroy
		@body_temperature = BodyTemperature.find(params[:baby_id])
		@body_temperature.destroy
		redirect_back(fallback_location: root_path)
	end
	 private
	def body_temperature_params
		params.require(:body_temperature).permit(:baby_id, :body, :create_time)
	end
end