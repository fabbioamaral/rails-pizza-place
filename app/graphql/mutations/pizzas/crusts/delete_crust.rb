module Mutations
    module Pizzas
        module Crusts
            class DeleteCrust < Mutations::BaseMutation
                description "Deletes a pizza crust"

                argument :id, ID, required: true, description: "Pizza Crust ID"
                
                field :status, Boolean, null: false, description: "Returns status of pizza crust deletion"

                def resolve(id:)
                    @id = id

                    status = ::Pizzas::Crusts::DeletionService.new(
                        id: @id
                    ).process

                    { status: status }
                end

            end
        end
    end
end
