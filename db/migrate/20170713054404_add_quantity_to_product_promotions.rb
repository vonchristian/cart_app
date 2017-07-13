class AddQuantityToProductPromotions < ActiveRecord::Migration[5.1]
  def change
    add_column :product_promotions, :product_quantity, :decimal
    add_column :product_promotions, :promo_price, :decimal
  end
end
