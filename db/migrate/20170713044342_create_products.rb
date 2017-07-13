class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :code
      t.string :name
      t.decimal :price
      t.decimal :data_size

      t.timestamps
    end
    add_index :products, :code, unique: true
    add_index :products, :name, unique: true
  end
end
