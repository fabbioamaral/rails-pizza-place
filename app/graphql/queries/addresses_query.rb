
module Queries
  class AddressesQuery < GraphQL::Schema::Resolver
    type [Types::Addresses::AddressType], null: false

    argument :client_id, ID, required: true

    def resolve(client_id:)
      Address.where(client_id: client_id)
    end
  end
end