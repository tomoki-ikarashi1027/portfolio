class BodyTemperaturesController < ApplicationController
	before_action :authenticate_customer!
	def new
		@body_temperature = BodyTemperature.new
	end
	def create
		@body_temperature = BodyTemperature.new(body_temperature_params)
		@body_temperature.baby_id = current_customer.select_baby.id
		@body_temperature.save
		redirect_to  edit_body_temperature_path(@body_temperature.id)
	end
	def edit
		@body_temperature = BodyTemperature.find(params[:id])
	end
	def update
		@body_temperature = BodyTemperature.find(params[:id])
		if @body_temperature.update(body_temperature_params)
			redirect_to  edit_body_temperature_path(@body_temperature.id)
	    end
    end
	def destroy
	end
	 private
	 def body_temperature_params
		params.require(:body_temperature).permit(:customer_id, :baby_id, :body, :create_time)
	end
end
