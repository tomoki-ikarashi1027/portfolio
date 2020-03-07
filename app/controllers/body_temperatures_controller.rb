class BodyTemperaturesController < ApplicationController
	def new
		@body_temperature = BodyTemperature.new
	end
	def create
		@body_temperature = BodyTemperature.new(body_temperatures_params)
		@body_temperature.save
		redirect_to  edit_body_temperature_path(@body_temperature.id)
	end
	def edit
		@body_temperature = BodyTemperature.find(params[:id])
	end
	def update
		@body_temperature = BodyTemperature.find(params[:id])
		if @body_temperature.update(body_temperatures_params)
			redirect_to  edit_body_temperature_path(@body_temperature.id)
	    end
    end
	def destroy
	end
	 private
	 def body_temperatures_params
		params.require(:body_temperature).permit(:user_id, :baby_id, :body)
end
end