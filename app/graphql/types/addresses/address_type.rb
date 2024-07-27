module Types
    module Addresses
        class AddressType < BaseObject
            field :id, ID, null: false
            field :street, String, null: false
            field :number, String, null: false
            field :suburb_id, ID, null: false
            field :city, String, null: false
            field :additional_info, String, null: true
            field :client_id, ID, null: false
            field :default, Boolean, null: false
        end
    end
end
