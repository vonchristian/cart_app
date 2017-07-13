class OrdersController < ApplicationController
	def new 
		@cart = current_cart
		@order = Order.new 
	end 
	def create 
		@order = Order.create(order_params)
		if @order.save 
			redirect_to store_index_url, notice: "Order created successfully"
		else 
			render :new 
		end 
	end 

	private 
	def order_params 
		params.require(:order).permit(:date)
	end
end