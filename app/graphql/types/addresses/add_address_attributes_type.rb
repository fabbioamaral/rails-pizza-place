module Types
    module Addresses
        class AddAddressAttributesType < Types::BaseInputObject
            argument :street, String, null: false
            argument :number, String, null: false
            argument :suburb_id, ID, null: false
            argument :client_id, ID, null: false
            argument :default, Boolean, null: false
        end
    end
end
