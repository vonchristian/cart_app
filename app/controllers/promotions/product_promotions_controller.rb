module Promotions 
	class ProductPromotionsController < ApplicationController
		def new 
			@promotion = Promotion.find(params[:promotion_id])
			@product_promotion = @promotion.product_promotions.build 
		end 
		def create
			@promotion = Promotion.find(params[:promotion_id])
			@product_promotion = @promotion.product_promotions.create(product_promotion_params)
			if @product_promotion.save! 
				redirect_to promotions_url, notice: "Product added to promotion successfully"
			else 
				render :new
			end
		end

		private 
		def product_promotion_params
			params.require(:product_promotion).permit(:product_id, :promo_price, :product_quantity, :free)
		end
	end 
end 