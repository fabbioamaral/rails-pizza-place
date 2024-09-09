module Types
    module Products
        class AddProductAttributesType < Types::BaseInputObject
            argument :name, String, required: true
            argument :price, Float, required: true
            argument :description, String, required: false
            argument :category_id, ID, required: true
            argument :pizza_crust_id, ID, required: false
            argument :flavour1_id, ID, required: false
            argument :flavour2_id, ID, required: false
            argument :size, String, required: true
        end
    end
end
