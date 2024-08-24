module Mutations
    module PaymentMethods
        class CreatePaymentMethod < Mutations::BaseMutation
            description "Creates a payment method"

            argument :name, String, required: true, description: "payment method name"
               
            field :status, Boolean, null: false, description: "Returns status of create payment method"
            field :id, ID, null: false, description: "Returns id of newly created payment method"

            def resolve(name:)
                @name = name
                result = PaymentMethod.create(name: @name) if @name.present?

                { status: result.present?, id: result.id } if result.present?

                { status: false, id: nil} if result.nil?

            end

        end
    end
end
