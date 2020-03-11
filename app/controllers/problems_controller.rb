class ProblemsController < ApplicationController
	before_action :authenticate_customer!
	def index
		@problems = Problem.all
	end
	def new
		@problem = Problem.new
	end
	def show
		@problem = Problem.find(params[:id])

	end
	def create
		@problem = Problem.new(problem_params)
		@problem.customer_id = current_customer.id
		binding.pry
		if @problem.save
		flash[:notice] = "投稿しました"
		redirect_to problems_path
	end
	end
	def edit
		@problem = Problem.find(params[:id])
		if current_customer.id != @problem.customer.id
			redirect_to problems_path
		end
	end
	def destroy
	end
	private
	def problem_params
		params.require(:problem).permit(:customer_id, :category_id, :body)
end
end