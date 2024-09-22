module Types
    module Clients
        class AddClientAttributesType < Types::BaseInputObject
            argument :name, String, required: true
            argument :phone, String, required: true
            argument :address, Types::Addresses::AddFirstAddressAttributesType, required: true
            argument :notes, String, required: false
        end
    end
end
