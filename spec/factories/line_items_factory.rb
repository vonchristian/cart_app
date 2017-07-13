FactoryGirl.define do 
  factory :line_item do  
    order nil 
    cart nil 
    
    unit_cost 10 
    quantity 1
    total_cost 10  
  end
end
