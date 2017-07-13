class LineItem < ApplicationRecord
  belongs_to :itemable, polymorphic: true, optional: true
  belongs_to :order, optional: true
  belongs_to :cart
  delegate :name, to: :itemable

  validates :quantity, :unit_cost, :total_cost, presence: true, numericality: { greater_than: 0.1 }

end
