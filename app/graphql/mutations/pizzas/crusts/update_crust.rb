module Mutations
    module Pizzas
        module Crusts
            class UpdateCrust < Mutations::BaseMutation
                description "Updates a pizza crust"

                argument :update_crust_attributes, Types::Pizzas::Crusts::UpdateCrustAttributesType, required: true, description: "object containing all properties needed to update a pizza crust"
                
                field :status, Boolean, null: false, description: "Returns status of update pizza crust"

                def resolve(update_crust_attributes:)
                    @update_crust_attributes = update_crust_attributes

                    status = ::Pizzas::Crusts::UpdateService.new(
                        update_crust_attributes: @update_crust_attributes
                    ).process

                    { status: status }
                end
            end
        end
    end
end
