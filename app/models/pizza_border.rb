class PizzaBorder < ApplicationRecord
    validates :name , presence: true
    validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, presence: true
    validates :size, presence: true

    has_many :products

    enum size: [:small, :large, :extra_large]
end
