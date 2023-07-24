class CreateSuburbs < ActiveRecord::Migration[6.0]
  def change
    create_table :suburbs do |t|
      t.string :name
      t.string :area
      t.integer :delivery_fee

      t.timestamps
    end
  end
end
