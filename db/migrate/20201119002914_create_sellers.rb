class CreateSellers < ActiveRecord::Migration[6.0]
  def change
    create_table :sellers do |t|
      t.string :name, null: false
      t.string :address
      t.timestamps null: false
    end
  end
end
