
module Types
  #require './../pizza_place/app/graphql/resolvers/orders_resolver'
  class QueryType < Types::BaseObject
    description "The query root of this schema"

    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # ORDERS
    field :client_orders, [Types::OrderType], resolver: Queries::OrdersQuery

    # PRODUCTS
    field :products, [Types::ProductType], resolver: Queries::ProductsQuery

    # CATEGORIES
    field :categories, [Types::CategoryType], resolver: Queries::CategoriesQuery

  end
end