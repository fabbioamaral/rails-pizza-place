class Address < ApplicationRecord
    validates :street, presence: true
    validates :number, presence: true

    belongs_to :suburb
    validates :suburb_id, presence: true

    belongs_to :client
    validates :client_id, presence: true
end
