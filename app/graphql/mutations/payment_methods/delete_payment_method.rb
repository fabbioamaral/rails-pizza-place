module Mutations
    module PaymentMethods
        class DeletePaymentMethod < Mutations::BaseMutation
            description "Deletes a payment method"

            argument :id, ID, required: true, description: "Payment Method ID"
               
            field :status, Boolean, null: false, description: "Returns status of payment method deletion"

            def resolve(id:)
                @id = id

                status = PaymentMethod.destroy(@id) if @id.present?

                { status: status.present? }

            end

        end
    end
end
