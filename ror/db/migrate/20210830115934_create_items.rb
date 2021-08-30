class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :description
      t.decimal :price, precision: 8, scale: 2
      

      t.timestamps
    end
  end
end
