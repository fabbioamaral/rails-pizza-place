
module Queries
    class ProductsQuery < GraphQL::Schema::Resolver
      type [Types::ProductType], null: false
  
      def resolve
        Product.all
      end
    end
  end