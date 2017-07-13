class Product < ApplicationRecord
	has_many :product_promotions 
	has_many :promotions, through: :product_promotions

	validates :name, :code, presence: true, uniqueness: true 
	validates :price, presence: true, numericality: { greater_than: 0.1 }
	validates :data_size, presence: true, numericality: { greater_than: 0.1 }
end
