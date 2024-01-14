class RemoveOrderTypeIdFromOrders < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :order_type_id
  end
end
