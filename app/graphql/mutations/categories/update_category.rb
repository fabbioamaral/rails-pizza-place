module Mutations
    module Categories
        class UpdateCategory < Mutations::BaseMutation
            description "Updates a category"

            argument :update_category_attributes, Types::Products::UpdateProductAttributesType, required: true, description: "object containing all properties needed to update a category"
               
            field :status, Boolean, null: false, description: "Returns status of update category"

            def resolve(update_category_attributes:)
                @update_category_attributes = update_category_attributes

                status = ::Categories::UpdateService.new(
                    update_category_attributes: @update_category_attributes
                ).process

                { status: status }
            end
        end
    end
end
