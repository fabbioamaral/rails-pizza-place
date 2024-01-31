class ChangeOrderTypeColumnTypeInOrders < ActiveRecord::Migration[6.0]
  def change
    change_table :orders do |t|
      t.change :order_type, :integer, using: 'order_type::integer'
    end
  end
end
