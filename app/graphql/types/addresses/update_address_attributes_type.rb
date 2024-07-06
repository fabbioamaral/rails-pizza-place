module Types
    module Addresses
        class UpdateAddressAttributesType < AddAddressAttributesType
            argument :id, ID, required: true
            argument :street, String, required: false
            argument :number, String, required: false
            argument :additional_info, String, required: false
            argument :suburb_id, ID, required: true
            argument :city, String, required: true
            argument :client_id, ID, required: false
            argument :default, Boolean, required: false
        end
    end
end