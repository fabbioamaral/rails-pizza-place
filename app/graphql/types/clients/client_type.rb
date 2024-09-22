module Types
    module Clients
        class CientType < BaseObject
            field :id, ID, null: false
            field :name, String, null: false
            field :phone, String, null: false
            field :addresses, [AddressType], null: true
            field :notes, String, null: true
        end
    end
end
