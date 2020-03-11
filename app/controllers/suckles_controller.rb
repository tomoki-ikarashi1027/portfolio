class SucklesController < ApplicationController
	before_action :authenticate_customer!
	def new
		@suckle = Suckle.new
	end
	def create
		@suckle = Suckle.new(suckle_params)
		@suckle.baby_id = current_customer.select_baby.id
		@suckle.save
		redirect_to  edit_suckle_path(@suckle.id)
	end
	def edit
		@suckle = Suckle.find(params[:id])
	end
	def update
		@suckle = Suckle.new(suckle_params)
		if @suckle.update
		redirect_to  edit_suckle_path(@suckle.id)
		end
	end
	def destroy
	end
	private
	def suckle_params
		params.require(:suckle).permit(:customer_id, :baby_id, :mother_milk, :milk_powder, :body, :create_time)
	end
end