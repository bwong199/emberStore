class CustomersController < ApplicationController
	skip_before_filter :verify_authenticity_token  # skip verifying the authenticity token
	def index
    	customers = Customer.all
    	render json: customers
  	end

	def create
    	customers = Customer.create(name: params[:customer][:name],
                   email: params[:customer][:email], address: params[:customer][:address])
    	render json: customers
	end
end
