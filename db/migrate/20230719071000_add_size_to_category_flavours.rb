class AddSizeToCategoryFlavours < ActiveRecord::Migration[6.0]
  def change
    add_column :category_flavours, :size, :integer
  end
end
