class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :subtotal
      t.integer :discount
      t.integer :delivery_fee
      t.integer :total_price
      t.integer :payment_method_id
      t.integer :order_type_id
      t.string :address
      t.integer :client_id
      t.integer :status_id

      t.timestamps
    end
  end
end
