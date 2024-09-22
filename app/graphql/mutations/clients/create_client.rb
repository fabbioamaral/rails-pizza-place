module Mutations
    module Clients
        class CreateClient < Mutations::BaseMutation
            description "Creates a client"

            argument :add_client_attributes, Types::Clients::AddClientAttributesType, required: true, description: "attributes needed to create a client"
               
            field :status, Boolean, null: false, description: "Returns status of create client"

            def resolve(add_client_attributes:)
                @add_client_attributes = add_client_attributes

                result = ::Clients::CreationService.new(
                    add_client_attributes: @add_client_attributes
                ).process
            end

        end
    end
end
