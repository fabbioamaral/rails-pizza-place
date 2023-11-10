module Mutations
    module Categories
        class DeleteCategory < Mutations::BaseMutation
            description "Deletes a category"

            argument :id, ID, required: true, description: "Category ID"
               
            field :status, Boolean, null: false, description: "Returns status of category deletion"

            def resolve(id:)
                @id = id

                status = ::Categories::DeletionService.new(
                    id: @id
                ).process

                { status: status }
            end

        end
    end
end
