class RemoveStatusIdFromOrders < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :status_id
  end
end
