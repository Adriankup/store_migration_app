class CreateSalesV2 < ActiveRecord::Migration[6.0]
  def change
    create_table :sales do |t|
      t.decimal :amount, precision: 10, scale: 2, null: false
      t.timestamps null: false
    end
  end
end
