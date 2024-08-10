module Types
    module Pizzas
        module Flavours
            class AddFlavourAttributesType < Types::BaseInputObject
                argument :name, String, required: true
                argument :category_flavour_id, ID, required: true
            end
        end
    end
end
