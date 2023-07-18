class Product < ApplicationRecord
    validates :name , presence: true
    validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, presence: true
    validates :description, length: { maximum: 400 }, allow_blank: true
    validates :size, allow_blank: true

    has_one :category
    validates :category, presence: true

    has_one :pizzaborder
    validates :pizzaborder, presence: false, allow_blank: true

    has_one :flavour1
    validates :flavour1, presence: false, allow_blank: true

    has_one :flavour2
    validates :flavour2, presence: false, allow_blank: true

end
