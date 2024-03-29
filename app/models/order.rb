class Order < ApplicationRecord
    # validations
    validates_with Orders::OrderStatusValidator
    validates_with Orders::OrderDiscountValidator
    validates_with Orders::OrderSubtotalValidator
    validates_with Orders::OrderDeliveryFeeValidator
    validates :subtotal, numericality: { greater_than_or_equal_to: 0 }, presence: true
    validates :delivery_fee, numericality: { greater_than_or_equal_to: 0 }, presence: false # in case order type is 'in person' there is no delivery fee associated with the order
    validates :discount, numericality: { greater_than_or_equal_to: 0 }, presence: false # discounts are totally optional
    validates :total_price, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, presence: true
    validates :payment_method, presence: true
    validates :order_type, presence: true
    validates :address_id, presence: false # in case order type is 'in person' there is no need to record any address
    validates :client_id, presence: true
    validates :status, presence: true

    # orders-products is a many-to-many relationship
    has_many :order_products
    has_many :products, through: :order_products

    enum order_type: [:in_person, :delivery]
    enum payment_method: [:credit_card, :debit_card, :cash, :other]
    enum status: [:preparing, :on_transit, :cancelled, :done]
end
