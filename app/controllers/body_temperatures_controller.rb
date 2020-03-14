class BodyTemperaturesController < ApplicationController
	before_action :authenticate_customer!
	def new
		@baby = Baby.find(params[:baby_id])
		@body_temperature = BodyTemperature.new
	end
	def create
		@baby = Baby.find(params[:baby_id])
		@body_temperature = @baby.body_temperatures.new(body_temperature_params)
		@body_temperature.save
		redirect_to  edit_baby_body_temperatures_path(@body)
	end
	def edit
		@body_temperature = BodyTemperature.find(params[:baby_id])
	end
	def update
		@baby = Baby.find(params[:baby_id])
		@body_temperature = BodyTemperature.find(params[:baby_id])
		if @body_temperature.update(body_temperature_params)
			redirect_to  baby_path(@body)
	    end
    end
	def destroy
	end
	 private
	def body_temperature_params
		params.require(:body_temperature).permit(:baby_id, :body, :create_time)
	end
end
