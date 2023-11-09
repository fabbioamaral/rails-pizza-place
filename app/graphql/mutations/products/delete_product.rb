module Mutations
    module Products
        class DeleteProduct < Mutations::BaseMutation
            description "Deletes a product"

            argument :id, ID, required: true, description: "Product ID"
               
            field :status, Boolean, null: false, description: "Returns status of product deletion"

            def resolve(id:)
                @id = id

                status = ::Products::DeletionService.new(
                    id: @id
                ).process

                { status: status }
            end

        end
    end
end
