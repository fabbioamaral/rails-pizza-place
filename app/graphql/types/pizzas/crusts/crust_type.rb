module Types
    module Pizzas
        module Crusts
            class CrustType < BaseObject
                field :id, ID, null: false
                field :name, String, null: false
                field :price, Int, null: false
                field :size, String, null: false
            end
        end
    end
end
