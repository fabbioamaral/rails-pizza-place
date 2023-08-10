module Types
    class OrderType < BaseObject
        field :id, ID, null: false
        field :products, [Types::ProductType], null: false
        field :subtotal, Int, null: false
        field :discount, Int, null: true
        field :delivery_fee, Int, null: true
        field :total_price, Int, null: false
        field :payment_method_id, ID, null: false
        field :address, String, null: true
        field :client_id, ID, null: false
        field :status_id, ID, null: false
    end
end
