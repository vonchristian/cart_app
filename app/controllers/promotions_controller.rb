class PromotionsController < ApplicationController
	def index 
		@promotions = Promotion.all 
	end 
	def new 
		@promotion = Promotion.new 
	end 
	def create 
		@promotion = Promotion.create(promotion_params)
		if @promotion.save 
			redirect_to promotions_url, notice: "Promotion created successfully."
		else 
			render :new 
		end 
	end 
	def show 
		@promotion = Promotion.find(params[:id])
	end

	private 
	def promotion_params
		params.require(:promotion).permit(:name)
	end 
end 