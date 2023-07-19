class Product < ApplicationRecord
    validates :name , presence: true
    validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, presence: true
    validates :description, length: { maximum: 400 }, allow_blank: true
    #validates :size, allow_blank: true

    has_one :category
    validates :category_id, presence: true

    has_one :pizza_border
    validates :pizza_border_id, presence: false

    validates :flavour1_id, presence: false

    validates :flavour2_id, presence: false

    enum size: {
        small: 'small',
        regular: 'regular',
        large: 'large',
        extra_large: 'extra_large'
    }
end
