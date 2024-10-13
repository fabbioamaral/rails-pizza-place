module Queries
    class ClientsQuery < GraphQL::Schema::Resolver
      type [Types::Clients::ClientType], null: false
  
      def resolve
        Client.all
      end
    end
  end