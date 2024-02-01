class ChangeAddressColumnTypeInOrders < ActiveRecord::Migration[6.0]
  def change
    rename_column :orders, :address, :address_id
    change_column :orders, :address_id, :integer, using: 'address_id::integer'
  end
end
