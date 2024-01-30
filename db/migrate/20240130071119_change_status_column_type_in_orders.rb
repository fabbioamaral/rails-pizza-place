class ChangeStatusColumnTypeInOrders < ActiveRecord::Migration[6.0]
  def change
    change_table :orders do |t|
      t.change :status, :integer, using: 'status::integer'
    end
  end
end
