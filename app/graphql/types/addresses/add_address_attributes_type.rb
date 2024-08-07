module Types
    module Addresses
        class AddAddressAttributesType < Types::BaseInputObject
            argument :street, String, required: true
            argument :number, String, required: true
            argument :additional_info, String, required: false
            argument :suburb_id, ID, required: true
            argument :city, String, required: true
            argument :client_id, ID, required: true
            argument :default, Boolean, required: true
        end
    end
end
