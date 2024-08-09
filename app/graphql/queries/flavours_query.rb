
module Queries
    class FlavoursQuery < GraphQL::Schema::Resolver
      type [Types::Pizzas::Flavours::FlavourType], null: false

      argument :size, String, required: true
  
      def resolve(size:)
        ::Pizzas::Flavours::FetchingService.new(size: size).process
      end
    end
  end