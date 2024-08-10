module Mutations
    module Pizzas
        module Flavours
            class DeleteFlavour < Mutations::BaseMutation
                description "Deletes a pizza flavour"

                argument :id, ID, required: true, description: "Pizza Flavour ID"
                
                field :status, Boolean, null: false, description: "Returns status of pizza flavour deletion"

                def resolve(id:)
                    @id = id

                    status = ::Pizzas::Flavours::DeletionService.new(
                        id: @id
                    ).process

                    { status: status }
                end

            end
        end
    end
end
