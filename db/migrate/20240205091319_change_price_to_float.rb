class ChangePriceToFloat < ActiveRecord::Migration[6.0]
  def change
    change_column :products, :price, :float, using: 'price::float'
  end
end
