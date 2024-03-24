module Types
    module Products
        class UpdateAddressAttributesType < AddAddressAttributesType
            argument :id, ID, required: true
        end
    end
end