module Mutations
    module Clients
        class UpdateClient < Mutations::BaseMutation
            description "Updates a client"

            argument :update_client_attributes, Types::Clients::UpdateClientAttributesType, required: true, description: "attributes needed to create a client"
               
            field :status, Boolean, null: false, description: "Returns status of update client"

            def resolve(update_client_attributes:)
                @update_client_attributes = update_client_attributes

                status = ::Clients::UpdateService.new(
                    update_client_attributes: @update_client_attributes
                ).process

                { status: status }
            end

        end
    end
end
