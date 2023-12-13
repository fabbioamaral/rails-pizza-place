class AddPizzaBorderIdToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :pizza_border_id, :integer
  end
end
