module Mutations
    module Addresses
        class CreateAddress < Mutations::BaseMutation
            description "Creates an address"

            argument :add_address_attributes, Types::Addresses::AddAddressAttributesType, required: true, description: "object containing all properties needed to create an address"
               
            field :status, Boolean, null: false, description: "Returns status of create address"
            field :id, ID, null: false, description: "Returns id of newly created address"

            def resolve(add_address_attributes:)
                @add_address_attributes = add_address_attributes

                result = ::Addresses::CreationService.new(
                    add_address_attributes: @add_address_attributes
                ).process
            end

        end
    end
end
