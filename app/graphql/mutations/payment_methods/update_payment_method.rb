module Mutations
    module PaymentMethods
        class UpdatePaymentMethod < Mutations::BaseMutation
            description "Updates a payment method"

            argument :id, ID, required: true, description: "payment method id"
            argument :name, String, required: true, description: "payment method name"
               
            field :status, Boolean, null: false, description: "Returns status of update payment method"

            def resolve(id:, name:)
                @payment_method = PaymentMethod.find(id)
                status = @payment_method.update(name: name) if @payment_method.present?
                { status: status }
            end
        end
    end
end
