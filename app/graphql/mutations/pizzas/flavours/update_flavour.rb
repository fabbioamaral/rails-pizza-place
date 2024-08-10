module Mutations
    module Pizzas
        module Flavours
            class UpdateFlavour < Mutations::BaseMutation
                description "Updates a pizza flavour"

                argument :update_flavour_attributes, Types::Pizzas::Flavours::UpdateFlavourAttributesType, required: true, description: "object containing all properties needed to update a pizza flavour"
                
                field :status, Boolean, null: false, description: "Returns status of update pizza flavour"

                def resolve(update_flavour_attributes:)
                    @update_flavour_attributes = update_flavour_attributes

                    status = ::Pizzas::Flavours::UpdateService.new(
                        update_flavour_attributes: @update_flavour_attributes
                    ).process

                    { status: status }
                end
            end
        end
    end
end
