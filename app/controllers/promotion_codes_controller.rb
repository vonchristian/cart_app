class PromotionCodesController < ApplicationController
	def create
		@cart = current_cart
		@code = PromotionCodeForm.new(promotion_code_params)
		if @code.find_code.present?
			@code.save
		  redirect_to store_index_url, notice: 'Code claimed successfully'
	  else 
		  redirect_to store_index_url, alert: "Invalid code!"
	  end
	end 
	private 
	def promotion_code_params
		params.require(:promotion_code_form).permit(:code, :cart_id)
	end
end 