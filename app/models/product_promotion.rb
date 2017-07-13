class ProductPromotion < ApplicationRecord
  belongs_to :product
  belongs_to :promotion

  delegate :name, :price, to: :product, prefix: true, allow_nil: true
  def self.regular_price
  	sum(&:regular_price)
  end
  def regular_price 
  	product_price * product_quantity
  end 
end
