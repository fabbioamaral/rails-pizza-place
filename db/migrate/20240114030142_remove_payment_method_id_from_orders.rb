class RemovePaymentMethodIdFromOrders < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :payment_method_id
  end
end
