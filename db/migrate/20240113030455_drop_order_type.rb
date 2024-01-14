class DropOrderType < ActiveRecord::Migration[6.0]
  def change
    drop_table :order_types
  end
end
