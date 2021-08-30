class CreatePurchases < ActiveRecord::Migration[6.1]
  def change
    create_table :purchases do |t|
      t.integer :count
      t.references :purchaser, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true
      t.references :merchant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
