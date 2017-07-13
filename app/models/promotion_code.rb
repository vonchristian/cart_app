class PromotionCode < ApplicationRecord
  belongs_to :cart
  belongs_to :code
  def self.applicable_discount
  	all.sum(&:applicable_discount)
  end
  def applicable_discount
  	if code.percent?
  		cart.total_cost * code.percent
  	elsif code.amount?
  	  code.amount
  	end
  end
end
