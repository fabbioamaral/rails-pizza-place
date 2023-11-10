module Types
    module Categories
        class UpdateCategoryAttributesType < Types::BaseInputObject
            argument :id, ID, required: true
            argument :name, String, required: true
        end
    end
end
