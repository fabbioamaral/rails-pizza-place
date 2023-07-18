class CreateCategoryFlavours < ActiveRecord::Migration[6.0]
  def change
    create_table :category_flavours do |t|
      t.string :name
      t.integer :price
      t.string :size

      t.timestamps
    end
  end
end
