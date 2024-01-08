
module Queries
  class CategoriesQuery < GraphQL::Schema::Resolver
    type [Types::CategoryType], null: false

    def resolve
      Category.all
    end
  end
end