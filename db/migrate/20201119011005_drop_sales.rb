class DropSales < ActiveRecord::Migration[6.0]
  def change
    drop_table :sales
  end
end
