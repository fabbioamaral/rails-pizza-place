module Mutations
    module Pizzas
        module Crusts
            class CreateCrust < Mutations::BaseMutation
                description "Creates a pizza crust"

                argument :add_crust_attributes, Types::Pizzas::Crusts::AddCrustAttributesType, required: true, description: "object containing all properties needed to create a pizza crust"
                
                field :status, Boolean, null: false, description: "Returns status of create pizza crust"
                field :id, ID, null: false, description: "Returns id of newly created pizza crust"

                def resolve(add_crust_attributes:)
                    @add_crust_attributes = add_crust_attributes

                    result = ::Pizzas::Crusts::CreationService.new(
                        add_crust_attributes: @add_crust_attributes
                    ).process
                end

            end
        end    
    end
end