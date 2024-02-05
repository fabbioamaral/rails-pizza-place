module Mutations
    module Products
        class CreateProduct < Mutations::BaseMutation
            description "Creates a product"

            argument :add_products_attributes, Types::Products::AddProductAttributesType, required: true, description: "object containing all properties needed to create a product"
               
            field :status, Boolean, null: false, description: "Returns status of create product"
            field :id, ID, null: false, description: "Returns id of newly created product"

            def resolve(add_products_attributes:)
                @add_products_attributes = add_products_attributes

                result = ::Products::CreationService.new(
                    add_products_attributes: @add_products_attributes
                ).process
            end

        end
    end
end
