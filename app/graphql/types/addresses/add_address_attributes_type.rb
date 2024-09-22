module Types
    module Addresses
        class AddAddressAttributesType < AddFirstAddressAttributesType
            argument :client_id, ID, required: true
        end
    end
end
