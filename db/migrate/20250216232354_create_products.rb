class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :url
      t.decimal :price, precision: 6, scale: 2

      t.timestamps
    end
  end
end
