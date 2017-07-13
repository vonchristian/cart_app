FactoryGirl.define do 
	factory :code do 
		code { Faker::Commerce.promotion_code }
		
		factory :percent_based_code do 
			promo_type 'percent'
			percent 1
		end 

		factory :amount_based_code do 
			promo_type 'amount'
			amount 10
		end 
	end 
end 