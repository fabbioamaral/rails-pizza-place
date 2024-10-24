module Types
  class QueryType < Types::BaseObject
    description "The query root of this schema"

    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # CLIENTS
    field :clients, [Types::Clients::ClientType], resolver: Queries::ClientsQuery

    # ORDERS
    field :client_orders, [Types::Orders::OrderType], resolver: Queries::OrdersQuery

    # PRODUCTS
    field :products, [Types::Products::ProductType], resolver: Queries::ProductsQuery

    # CATEGORIES
    field :categories, [Types::Categories::CategoryType], resolver: Queries::CategoriesQuery

    # ADDRESSES
    field :addresses, [Types::Addresses::AddressType], resolver: Queries::AddressesQuery

    # PIZZA CRUSTS
    field :pizza_crusts, [Types::Pizzas::Crusts::CrustType], resolver: Queries::CrustsQuery

    # PIZZA FLAVOURS
    field :pizza_flavours, [Types::Pizzas::Flavours::FlavourType], resolver: Queries::FlavoursQuery

    # PAYMENT METHODS
    field :payment_methods, [Types::PaymentMethods::PaymentMethodType], resolver: Queries::PaymentMethodsQuery
  end
end