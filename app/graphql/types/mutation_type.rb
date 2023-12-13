module Types
  class MutationType < Types::BaseObject
    # PRODUCTS
    field :create_product, mutation: Mutations::Products::CreateProduct
    field :update_product, mutation: Mutations::Products::UpdateProduct
    field :delete_product, mutation: Mutations::Products::DeleteProduct

    # CATEGORIES
    field :create_Category, mutation: Mutations::Categories::CreateCategory
    field :update_Category, mutation: Mutations::Categories::UpdateCategory
    field :delete_Category, mutation: Mutations::Categories::DeleteCategory
  end
end
