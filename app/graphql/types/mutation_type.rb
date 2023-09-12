module Types
  class MutationType < Types::BaseObject
    field :create_product, mutation: Mutations::Products::CreateProduct
  end
end
