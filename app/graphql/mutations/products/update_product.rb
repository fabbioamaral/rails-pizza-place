module Mutations
    module Products
        class UpdateProduct < Mutations::BaseMutation
            description "Updates a product"

            argument :update_products_attributes, Types::Products::UpdateProductAttributesType, required: true, description: "object containing all properties needed to create a product"
               
            field :status, Boolean, null: false, description: "Returns status of update product"

            def resolve(update_products_attributes:)
                @update_product_attributes = update_products_attributes

                status = ::Products::UpdateService.new(
                    update_products_attributes: @update_product_attributes
                ).process

                { status: status }
            end
        end
    end
end
