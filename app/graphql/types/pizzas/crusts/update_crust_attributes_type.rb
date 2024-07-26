module Types
    module Pizzas
        module Crusts
            class UpdateCrustAttributesType < AddCrustAttributesType
                argument :id, ID, required: true
            end
        end
    end
end
