FactoryGirl.define do 
	factory :promotion do 
		name { Faker::Commerce.product_name }
	end
end