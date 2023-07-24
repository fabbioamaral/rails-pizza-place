class PaymentMethod < ApplicationRecord
    validates :name, presence: true
end
