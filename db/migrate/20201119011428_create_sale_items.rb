class CreateSaleItems < ActiveRecord::Migration[6.0]
  def change
    create_table :sale_items do |t|
      t.string :buyer
      t.references :sale, null: false, foreign_key: true
      t.integer :quantity
      t.references :product, null: false, foreign_key: true
      t.references :seller, null: false, foreign_key: true

      t.timestamps null: false
    end
  end
end
