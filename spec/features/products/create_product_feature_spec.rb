require 'rails_helper'

feature 'Create product' do
  before(:each) do 
    visit products_url
    click_link 'New Product'
  end
	scenario 'with valid attributes' do
		fill_in 'Code', with: 'test'
	  fill_in 'Name', with: 'Test product'
	  fill_in 'Data size', with: 1000
	  fill_in 'Price', with: 99.99 
	  click_button "Create Product"

	  expect(page).to have_content 'created successfully'
	end 
	scenario 'with invalid attributes' do 
		click_button 'Create Product'

		expect(page).to have_content "can't be blank"
	end
end 
