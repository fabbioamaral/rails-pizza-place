class Order < ApplicationRecord
    validates :products , presence: true
    validates :subtotal, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, presence: true
    validates :delivery_fee, presence: false # in case order type is 'in person' there is no delivery fee associated with the order
    validates :discount, presence: false # discounts are totally optional
    validates :total_price, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, presence: true
    validates :payment_method_id, presence: true
    validates :order_type_id, presence: true
    validates :address, presence: false # in case order type is 'in person' there is no need to record any address
    validates :client_id, presence: true
    validates :status_id, presence: true

    # orders-products is a many-to-many relationship
    has_many :order_products
    has_many :products, :through => :order_products

end
