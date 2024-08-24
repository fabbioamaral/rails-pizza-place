class CreatePaymentMethod < ActiveRecord::Migration[6.0]
  def change
    create_table :payment_methods do |t|
      t.string :name
    end
  end
end
