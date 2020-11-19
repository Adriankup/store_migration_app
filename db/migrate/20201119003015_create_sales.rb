class CreateSales < ActiveRecord::Migration[6.0]
  def change
    create_table :sales do |t|
      t.string :buyer
      t.integer :quantity
      t.references :product, index: true, null: false, foreign_key: true
      t.references :seller, index: true, null: false, foreign_key: true

      t.timestamps
    end
  end
end
