class Admins::ProblemsController < ApplicationController
	before_action :authenticate_admin!
	def index
		@problems = Problem.all
	end
	def show
		# @category = Category.find(params[:id])
		@problem = Problem.find(params[:id])
	end
	def destroy
		@Problem = Problem.find(params[:id])
		@Problem.destroy
		redirect_to admins_problems_path
	end
	private
	def problem_params
		params.require(:problem).permit(:customer_id, :category_id, :body)
	end
end


