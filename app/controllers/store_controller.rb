class StoreController < ApplicationController 
	def index 
		@products = Product.all 
		@promotions = Promotion.all
		@line_item = LineItem.new 
		@cart = current_cart
		@order = Order.new 
		@promotion_code = PromotionCodeForm.new
	end 
end 