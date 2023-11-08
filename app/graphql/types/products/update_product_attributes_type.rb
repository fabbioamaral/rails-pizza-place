module Types
    module Products
        class UpdateProductAttributesType < Types::BaseInputObject
            argument :id, ID, required: true
            argument :name, String, required: false
            argument :price, Int, required: false
            argument :description, String, required: false
            argument :category_id, ID, required: false
            argument :pizza_border_id, ID, required: false
            argument :flavour1_id, ID, required: false
            argument :flavour2_id, ID, required: false
            argument :size, String, required: false
        end
    end
end
    
    
    
    
    
    