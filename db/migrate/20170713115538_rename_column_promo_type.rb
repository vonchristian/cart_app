class RenameColumnPromoType < ActiveRecord::Migration[5.1]
  def change
  	rename_column :codes, :promo_type, :promo_code_type
  end
end
