class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :description, null: false
      t.decimal :price, precision: 10, scale: 2, null: false

      t.timestamps null: false
    end
  end
end
