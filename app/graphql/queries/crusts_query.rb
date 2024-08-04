
module Queries
    class CrustsQuery < GraphQL::Schema::Resolver
      type [Types::Pizzas::Crusts::CrustType], null: false

      argument :size, String, required: true
  
      def resolve(size:)
        PizzaCrust.where(size: size)
      end
    end
  end