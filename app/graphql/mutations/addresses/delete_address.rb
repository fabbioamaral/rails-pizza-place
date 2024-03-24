module Mutations
    module Addresses
        class DeleteAddress < Mutations::BaseMutation
            description "Deletes an address"

            argument :id, ID, required: true, description: "Address ID"
               
            field :status, Boolean, null: false, description: "Returns status of address deletion"

            def resolve(id:)
                @id = id

                status = ::Addresses::DeletionService.new(
                    id: @id
                ).process

                { status: status }
            end

        end
    end
end
