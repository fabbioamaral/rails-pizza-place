module Queries
  class CategoriesQuery < GraphQL::Schema::Resolver
    type [Types::Categories::CategoryType], null: false

    def resolve
      Category.all
    end
  end
end