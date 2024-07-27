class CreatePizzaCrust < ActiveRecord::Migration[6.0]
  def change
    create_table :pizza_crusts do |t|
      t.string :name
      t.float :price
      t.string :size
    end
  end
end
