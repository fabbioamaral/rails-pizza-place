class DropPaymentMethodTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :payment_methods
  end
end
