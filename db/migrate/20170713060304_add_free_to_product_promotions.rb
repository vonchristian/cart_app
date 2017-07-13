class AddFreeToProductPromotions < ActiveRecord::Migration[5.1]
  def change
    add_column :product_promotions, :free, :boolean, default: false
  end
end
