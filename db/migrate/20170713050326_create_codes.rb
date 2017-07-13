class CreateCodes < ActiveRecord::Migration[5.1]
  def change
    create_table :codes do |t|
      t.string :code
      t.decimal :percent

      t.timestamps
    end
    add_index :codes, :code, unique: true
  end
end
