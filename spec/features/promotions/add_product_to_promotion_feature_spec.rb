require 'rails_helper'

feature 'Add product to promotion' do
  before(:each) do 
    promo = create(:promotion)
    visit promotions_url 
    click_link promo.name 
    click_link 'Add Product'
  end  
	scenario 'with valid attributes' do 
		product = create(:product)
		# expect(page).to have_content(product.name)
		# choose product.name
	end 
end 