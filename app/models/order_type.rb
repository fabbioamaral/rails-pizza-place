class OrderType < ApplicationRecord
    validates :name, presence: true
end
