class Admin::ProblemsController < ApplicationController
	before_action :authenticate_admin!
	def index
		@problems = Problem.all
	end
	def show
		@Problem = Problem.find(params[:id])
	end
	def destroy
		@Problem = Problem.find(params[:id])
		@Problem.destroy
	end
	private
end
