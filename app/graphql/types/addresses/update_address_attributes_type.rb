module Types
    module Addresses
        class UpdateAddressAttributesType < AddAddressAttributesType
            argument :id, ID, required: true
        end
    end
end