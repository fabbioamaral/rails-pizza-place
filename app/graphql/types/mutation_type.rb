module Types
  class MutationType < Types::BaseObject
    # PRODUCTS
    field :create_product, mutation: Mutations::Products::CreateProduct
    field :update_product, mutation: Mutations::Products::UpdateProduct
    field :delete_product, mutation: Mutations::Products::DeleteProduct

    # CATEGORIES
    field :create_category, mutation: Mutations::Categories::CreateCategory
    field :update_category, mutation: Mutations::Categories::UpdateCategory
    field :delete_category, mutation: Mutations::Categories::DeleteCategory

    # ADDRESSES
    field :create_address, mutation: Mutations::Addresses::CreateAddress
    field :update_address, mutation: Mutations::Addresses::UpdateAddress
    field :delete_address, mutation: Mutations::Addresses::DeleteAddress

    # PIZZA CRUSTS
    field :create_crust, mutation: Mutations::Pizzas::Crusts::CreateCrust
    field :update_crust, mutation: Mutations::Pizzas::Crusts::UpdateCrust
    field :delete_crust, mutation: Mutations::Pizzas::Crusts::DeleteCrust
    
    # PIZZA FLAVOURS
    field :create_flavour, mutation: Mutations::Pizzas::Flavours::CreateFlavour
    field :update_flavour, mutation: Mutations::Pizzas::Flavours::UpdateFlavour
    field :delete_flavour, mutation: Mutations::Pizzas::Flavours::DeleteFlavour
  end
end
