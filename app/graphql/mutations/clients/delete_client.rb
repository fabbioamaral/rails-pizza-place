module Mutations
    module Clients
        class DeleteClient < Mutations::BaseMutation
            description "Deletes a client"

            argument :id, ID, required: true, description: "Client ID"
               
            field :status, Boolean, null: false, description: "Returns status of create client"

            def resolve(id:)
                @id = id

                status = ::Clients::DeletionService.new(
                    id: @id
                ).process

                { status: status }
            end

        end
    end
end
