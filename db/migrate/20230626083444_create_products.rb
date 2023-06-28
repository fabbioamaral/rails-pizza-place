class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.string :description
      t.integer :category
      t.integer :border
      t.integer :flavor1
      t.integer :flavor2
      t.text :notes
      t.integer :size

      t.timestamps
    end
  end
end
