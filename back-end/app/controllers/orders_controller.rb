class OrdersController < ApplicationController
skip_before_filter :verify_authenticity_token  # skip verifying the authenticity token
	def index
    	orders = Order.all
    	render json: orders
  	end

	def create
    	order = Order.create(customer_name: params[:order][:customer_name],
                   product: params[:order][:product], quantity: params[:order][:quantity])
    	render json: order
	end

end
