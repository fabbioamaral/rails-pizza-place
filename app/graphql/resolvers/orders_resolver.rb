
module Resolvers
  class OrdersResolver < GraphQL::Schema::Resolver
    type [Types::OrderType], null: false

    argument :client_id, ID, required: true

    def resolve(client_id:)
      Order.where(client_id: client_id)
    end
  end
end