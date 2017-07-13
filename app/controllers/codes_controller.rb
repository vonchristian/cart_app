class CodesController < ApplicationController 
	def index 
		@codes = Code.all 
	end 
	def new 
		@code = Code.new 
	end 
	def create 
		@code = Code.create(code_params)
		if @code.save 
			redirect_to codes_url, notice: "Code created successfully"
		else 
			render :new 
		end 
	end 

	private 
	def code_params
		params.require(:code).permit(:code, :promo_code_type, :percent, :amount)
	end
end 