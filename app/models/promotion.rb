class Promotion < ApplicationRecord
	has_many :product_promotions
	has_many :products, through: :product_promotions

	validates :name, presence: true, uniqueness: true
	def regular_price
		product_promotions.regular_price
	end
	def discounted_price
		product_promotions.sum(:promo_price)
	end
	def savings
		regular_price - discounted_price
	end
end
