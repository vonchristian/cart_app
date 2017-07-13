class ProductsController < ApplicationController
	def index 
		@products = Product.all 
	end
	def new 
		@product = Product.new 
	end
	def create 
		@product = Product.create(product_params)
		if @product.valid?
			@product.save 
			redirect_to products_url, notice: "Product created successfully."
		else 
			render :new 
		end
	end

	private 
	def product_params
		params.require(:product).permit(:name, :code, :data_size, :price)
	end
end 