class AddPromoTypeToCodes < ActiveRecord::Migration[5.1]
  def change
    add_column :codes, :promo_type, :integer
    add_column :codes, :amount, :decimal
  end
end
