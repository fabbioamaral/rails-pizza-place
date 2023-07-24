class Suburb < ApplicationRecord
    validates :name, presence: true
    validates :delivery_fee, presence: true

    has_many :addresses
end
