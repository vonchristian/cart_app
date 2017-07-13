class CreatePromotionCodes < ActiveRecord::Migration[5.1]
  def change
    create_table :promotion_codes do |t|
      t.belongs_to :cart, foreign_key: true
      t.belongs_to :code, foreign_key: true

      t.timestamps
    end
  end
end
