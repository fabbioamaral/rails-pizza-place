module Types
    module Pizzas
        module Flavours
            class UpdateFlavourAttributesType < Types::BaseInputObject
                argument :id, ID, required: true
                argument :name, String, required: false
                argument :category_flavour_id, ID, required: false
            end
        end
    end
end
