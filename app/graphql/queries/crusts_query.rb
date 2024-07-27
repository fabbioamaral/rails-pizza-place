
module Queries
    class CrustsQuery < GraphQL::Schema::Resolver
      type [Types::Pizzas::Crusts::CrustType], null: false
  
      def resolve
        PizzaCrust.all
      end
    end
  end