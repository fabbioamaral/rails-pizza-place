module Mutations
    module Addresses
        class UpdateAddress < Mutations::BaseMutation
            description "Updates an address"

            argument :update_address_attributes, Types::Addresses::UpdateAddressAttributesType, required: true, description: "object containing all properties needed to create an address"
               
            field :status, Boolean, null: false, description: "Returns status of update address"

            def resolve(update_address_attributes:)
                @update_address_attributes = update_address_attributes

                status = ::Addresses::UpdateService.new(
                    update_address_attributes: @update_address_attributes
                ).process

                { status: status }
            end
        end
    end
end
