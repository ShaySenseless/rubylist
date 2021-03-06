class CategoriesController < ApplicationController
	def index
		@categories = Category.all
		@community = @categories[0]
		@housing = @categories[1]
		@jobs = @categories[2]
		@personals = @categories[3]
		@services = @categories[4]
		@for_sale = @categories[5]
	end
	def show
		@listings = Listing.where(category_id: params[:id])
		@category = Category.find(params[:id])
	end
end