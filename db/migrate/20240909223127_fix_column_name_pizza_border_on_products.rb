class FixColumnNamePizzaBorderOnProducts < ActiveRecord::Migration[6.0]
  def change
    rename_column :products, :pizza_border_id, :pizza_crust_id
  end
end
