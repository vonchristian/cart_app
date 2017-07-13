class Promotion < ApplicationRecord
	has_many :product_promotions
	has_many :products, through: :product_promotions

	validates :name, presence: true, uniqueness: true
	def total_price
		product_promotions.sum(:promo_price)
	end
end
