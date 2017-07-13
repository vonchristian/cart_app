class LineItemsController < ApplicationController
	def create 
		@cart = current_cart
		@line_item = @cart.line_items.create(line_item_params)
		@line_item.save 
		redirect_to store_index_url, notice: "added successfully"
	end 

	private 
	def line_item_params
		params.require(:line_item).permit(:itemable_id, :itemable_type, :unit_cost, :total_cost, :quantity)
	end
end