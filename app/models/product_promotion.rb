class ProductPromotion < ApplicationRecord
  belongs_to :product
  belongs_to :promotion

  delegate :name, to: :product, prefix: true
end
