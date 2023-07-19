class RemoveSizeFromCategoryFlavours < ActiveRecord::Migration[6.0]
  def change
    remove_column :category_flavours, :size, :text
  end
end
