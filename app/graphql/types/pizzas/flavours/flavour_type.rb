module Types
    module Pizzas
        module Flavours
            class FlavourType < BaseObject
                field :id, ID, null: false
                field :name, String, null: false
                field :price, Float, null: false
                field :category_flavour_id, ID, null: false
                field :category_flavour_name, String, null: false
            end
        end
    end
end
