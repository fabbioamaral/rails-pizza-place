module Mutations
    module Categories
        class CreateCategory < Mutations::BaseMutation
            description "Creates a category"

            argument :add_category_attributes, Types::Categories::AddCategoryAttributesType, required: true, description: "object containing all properties needed to create a category"
               
            field :status, Boolean, null: false, description: "Returns status of create category"

            def resolve(add_category_attributes:)
                #binding.pry
                @add_category_attributes = add_category_attributes

                status = ::Categories::CreationService.new(
                    add_category_attributes: @add_category_attributes
                ).process

                { status: status }
            end

        end
    end
end
