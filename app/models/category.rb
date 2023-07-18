class Category < ApplicationRecord
    validates :name, length: { minimum: 2 }
    has_many :products
end
