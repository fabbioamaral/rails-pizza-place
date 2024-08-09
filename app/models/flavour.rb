class Flavour < ApplicationRecord
    validates :name, presence: true
    validates :category_flavour_id, presence: true
    has_many :products
end
