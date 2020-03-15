class CommentsController < ApplicationController
	before_action :authenticate_customer!
	def create
		@problem = Problem.find(params[:problem_id])
		@comment = 
	end
	def destroy
	end
end
