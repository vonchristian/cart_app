class StoreController < ApplicationController 
	def index 
		@promotions = Promotion.all
		@line_item = LineItem.new 
		@cart = current_cart
		@order = Order.new 
		@promotion_code = PromotionCodeForm.new
	end 
end 