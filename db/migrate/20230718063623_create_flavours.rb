class CreateFlavours < ActiveRecord::Migration[6.0]
  def change
    create_table :flavours do |t|
      t.string :name
      t.integer :category_flavour_id

      t.timestamps
    end
  end
end
