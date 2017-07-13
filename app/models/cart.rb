class Cart < ApplicationRecord
	has_many :line_items, dependent: :destroy
	has_many :promotion_codes, dependent: :destroy
	has_many :codes, through: :promotion_codes

	def total_cost
		line_items.sum(:total_cost)
	end
	def total_cost_less_discount
		total_cost - total_discount
	end
	def total_discount
		promotion_codes.applicable_discount
	end
end
