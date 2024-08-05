class ChangeSizeTypeCategoryFlavour < ActiveRecord::Migration[6.0]
  def change
    change_column :category_flavours, :size, :string
  end
end
