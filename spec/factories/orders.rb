FactoryBot.define do
    factory :order do
      order_type { 'delivery' }
      subtotal { 80 }
      delivery_fee { 5 }
      discount { 0 }
      total_price { 85 }
      payment_method { 'credit_card' }
      address_id { create(:address).id }
      client_id { 2 }
      status { 'preparing' }
    end
end