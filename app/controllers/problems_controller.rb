class ProblemsController < ApplicationController
	before_action :authenticate_customer!
	def index
		@problems = Problem.search(params[:search],params[:problem_name]).page(params[:page]).reverse_order
	end
	def new
		@problem = Problem.new
	end
	def show
		@problem = Problem.find(params[:id])
		@comment = Comment.new
		@comments = @problem.comments.page(params[:page]).reverse_order
	end
	def create
		@problem = Problem.new(problem_params)
		@problem.customer_id = current_customer.id
		@problem.score = Language.get_data(params[:problem][:body] )
		if @problem.save
		redirect_to problems_path
		else render :new
		end
	end
	def edit
		@problem = Problem.find(params[:id])
		if current_customer.id != @problem.customer.id
			redirect_to problems_path
		end
	end
	def destroy
		@Problem = Problem.find(params[:id])
		@Problem.destroy
		redirect_to problems_path
	end
	private
	def problem_params
		params.require(:problem).permit(:customer_id, :category_id, :body, :name)
end
end

