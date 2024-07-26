module Types
    module Pizzas
        module Crusts
            class AddCrustAttributesType < Types::BaseInputObject
                argument :name, String, required: true
                argument :price, Int, required: true
                argument :size, String, required: true
            end
        end
    end
end
