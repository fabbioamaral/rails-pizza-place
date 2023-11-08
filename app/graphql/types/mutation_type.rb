module Types
  class MutationType < Types::BaseObject
    field :create_product, mutation: Mutations::Products::CreateProduct
    field :update_product, mutation: Mutations::Products::UpdateProduct
  end
end
