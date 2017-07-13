class CreateProductPromotions < ActiveRecord::Migration[5.1]
  def change
    create_table :product_promotions do |t|
      t.belongs_to :product, foreign_key: true
      t.belongs_to :promotion, foreign_key: true

      t.timestamps
    end
  end
end
