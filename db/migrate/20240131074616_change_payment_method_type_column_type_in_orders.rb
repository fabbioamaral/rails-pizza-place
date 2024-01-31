class ChangePaymentMethodTypeColumnTypeInOrders < ActiveRecord::Migration[6.0]
  def change
    change_table :orders do |t|
      t.change :payment_method, :integer, using: 'payment_method::integer'
    end
  end
end
