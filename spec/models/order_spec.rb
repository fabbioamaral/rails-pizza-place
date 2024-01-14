# spec/models/auction_spec.rb

require 'rails_helper'

RSpec.describe Order, :type => :model do
    let(:order) { Order.new(
        order_type: 'delivery',
        subtotal: 80,
        delivery_fee: 5,
        discount: 0,
        total_price: 85,
        payment_method: 'credit_card',
        address: Address.new(street: 'Street A', number: '4', suburb_id: 2, client_id: 1),
        client_id: 1,
        status: 'done'
        ) }
    
    it "is valid with valid attributes" do
        expect(order).to be_valid
    end

    # it "is not valid without name" do
    #     pizza_border.name = ''
    #     expect(pizza_border).not_to be_valid
    # end

    # it "is not valid without price" do
    #     pizza_border.price = nil
    #     expect(pizza_border).not_to be_valid
    # end

    # it "is not valid without size" do
    #     pizza_border.size = nil
    #     expect(pizza_border).not_to be_valid
    # end

    # it "is not valid with a size other than: small, regular, large or extra_large" do
    #     should define_enum_for(:size).with([:small, :large, :extra_large]).backed_by_column_of_type(:string)
    # end

    # it "is the same client_id as the address" do

    # end
end