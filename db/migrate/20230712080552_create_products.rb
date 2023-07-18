class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.integer :category_id
      t.integer :border_id
      t.integer :flavour1_id
      t.integer :flavour2_id
      t.string :size

      t.timestamps
    end
  end
end
