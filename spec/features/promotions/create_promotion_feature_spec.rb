require 'rails_helper'

feature "Create promotion" do 
	before(:each) do 
		visit promotions_url
		click_link 'New Promotion'
	end 

	scenario 'with valid attributes' do 
		fill_in 'Name', with: 'Test promotion'
		click_button "Create Promotion"

		expect(page).to have_content 'created successfully'
	end 

	scenario 'with invalid attributes' do 
		click_button 'Create Promotion'

		expect(page).to have_content "can't be blank"
	end
end 