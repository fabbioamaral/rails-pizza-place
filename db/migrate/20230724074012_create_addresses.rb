class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :number
      t.string :additional_info
      t.integer :suburb_id
      t.integer :client_id

      t.timestamps
    end
  end
end
