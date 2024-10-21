module Types
    module Clients
        class ClientType < BaseObject
            field :id, ID, null: false
            field :name, String, null: false
            field :phone, String, null: false
            field :addresses, [Addresses::AddressType], null: true
            field :notes, String, null: true
        end
    end
end
