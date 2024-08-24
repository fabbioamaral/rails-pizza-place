
module Queries
  class PaymentMethodsQuery < GraphQL::Schema::Resolver
    type [Types::PaymentMethods::PaymentMethodType], null: false

    def resolve
      PaymentMethod.all
    end
  end
end