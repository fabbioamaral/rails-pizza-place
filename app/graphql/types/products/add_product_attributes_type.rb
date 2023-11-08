module Types
    module Products
        class AddProductAttributesType < Types::BaseInputObject
            argument :name, String, required: true
            argument :price, Int, required: true
            argument :description, String, required: false
            argument :category_id, ID, required: true
            argument :pizza_border_id, ID, required: false
            argument :flavour1_id, ID, required: false
            argument :flavour2_id, ID, required: false
            argument :size, String, required: true
        end
    end
end
