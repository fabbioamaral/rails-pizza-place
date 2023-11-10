module Types
    module Categories
        class AddCategoryAttributesType < Types::BaseInputObject
            argument :name, String, required: true
        end
    end
end
