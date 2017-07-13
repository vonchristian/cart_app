require 'rails_helper'

feature 'Add product to promotion' do
  before(:each) do 
    promo = create(:promotion)
    visit promotions_url 
    click_link promo.name 
  end  
	scenario 'with valid attributes' do 
		product = create(:product, name: "Test Product")
		select "Test Product", from: 'productSelect'
	end 
end 