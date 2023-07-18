class Category < ApplicationRecord
    validates :name, length: { minimum: 2 }, presence: true
    has_many :products
end
