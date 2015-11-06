class ProductsController < ApplicationController
skip_before_filter :verify_authenticity_token  # skip verifying the authenticity token
	def index
    	products = Product.all
    	render json: products
  	end

	def create
    	product = Product.create(name: params[:product][:name],
                   description: params[:product][:description], quantity: params[:product][:quantity])
    	render json: product
	end
end
