class Admins::CategoriesController < ApplicationController
	 before_action :authenticate_admin!
	def index
		@categories = Category.all
		@category = Category.new
	end
	def create
		category = Category.new(category_params)
		category.save
		redirect_to admin_categories_path
	end
	def edit
		@category = Category.find(params[:id])
	end
	def update
		category = Category.find(params[:id])
		category.update(category_params)
		redirect_to admin_categories_path
	end
	def destroy
	end
	private
	def category_params
		params.require(:category).permit(:problem_name)
	end
end