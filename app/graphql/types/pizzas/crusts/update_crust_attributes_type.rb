module Types
    module Pizzas
        module Crusts
            class UpdateCrustAttributesType < Types::BaseInputObject
                argument :id, ID, required: true
                argument :name, String, required: false
                argument :price, Int, required: false
                argument :size, String, required: false
            end
        end
    end
end
