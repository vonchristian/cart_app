require 'rails_helper'

feature 'Create Code' do 
	before(:each) do 
		visit codes_url
		click_link "New Code"
	end 

	scenario 'with valid attributes' do 
		fill_in 'Code', with: 'sample_code'
		choose 'Percent'
		fill_in 'Percent(in decimal)', with: 99
		click_button "Create Code"

		expect(page).to have_content 'created successfully'
	end 
	scenario 'with invalid attributes' do 
		click_button 'Create Code'

		expect(page).to have_content "can't be blank"
	end
end 