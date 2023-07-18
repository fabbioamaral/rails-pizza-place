class CreatePizzaBorders < ActiveRecord::Migration[6.0]
  def change
    create_table :pizza_borders do |t|
      t.string :name
      t.integer :price
      t.string :size

      t.timestamps
    end
  end
end
