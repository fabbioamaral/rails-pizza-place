module Mutations
    module Pizzas
        module Flavours
            class CreateFlavour < Mutations::BaseMutation
                description "Creates a pizza flavour"

                argument :add_flavour_attributes, Types::Pizzas::Flavours::AddFlavourAttributesType, required: true, description: "object containing all properties needed to create a pizza flavour"
                
                field :status, Boolean, null: false, description: "Returns status of create pizza flavour"
                field :id, ID, null: false, description: "Returns id of newly created pizza flavour"

                def resolve(add_flavour_attributes:)
                    @add_flavour_attributes = add_flavour_attributes

                    result = ::Pizzas::Flavours::CreationService.new(
                        add_flavour_attributes: @add_flavour_attributes
                    ).process
                end

            end
        end    
    end
end