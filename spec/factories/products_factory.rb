FactoryGirl.define do 
	factory :product do 
		name { Faker::Commerce.product_name }
		code { Faker::Commerce.promotion_code }
		price 9.99
		data_size 1000
	end 
end 