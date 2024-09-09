module Types
    module Products
        class ProductType < BaseObject
            field :id, ID, null: false
            field :name, String, null: false
            field :price, Int, null: false
            field :description, String, null: true
            field :category_id, ID, null: false
            field :pizza_crust_id, ID, null: true
            field :flavour1_id, ID, null: true
            field :flavour2_id, ID, null: true
            field :size, String, null: false
        end
    end
end
