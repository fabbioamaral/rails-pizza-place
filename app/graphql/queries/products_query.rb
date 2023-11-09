
module Queries
    class ProductsQuery < GraphQL::Schema::Resolver
      type [Types::ProductType], null: false
  
      argument :category_id, ID, required: true
  
      def resolve(category_id:)
        Product.where(category_id: category_id)
      end
    end
  end