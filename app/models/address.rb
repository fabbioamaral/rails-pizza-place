class Address < ApplicationRecord
    validates :street, presence: true
    validates :number, presence: true

    has_one :suburb
    validates :suburb_id, presence: true

    has_one :client
    validates :client_id, presence: true
end
