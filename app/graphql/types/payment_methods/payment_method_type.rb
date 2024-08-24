module Types
    module PaymentMethods
        class PaymentMethodType < BaseObject
            field :id, ID, null: false
            field :name, String, null: false
        end
    end
end
