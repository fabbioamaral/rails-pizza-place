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

    it "is not valid without order_type" do
        order.order_type = nil
        expect(order).not_to be_valid
    end

    it "is not valid without subtotal" do
        order.subtotal = nil
        expect(order).not_to be_valid
    end

    it "is not valid without total_price" do
        order.total_price = nil
        expect(order).not_to be_valid
    end

    it "is not valid without payment_method" do
        order.payment_method = nil
        expect(order).not_to be_valid
    end

    it "is not valid without client_id" do
        order.client_id = nil
        expect(order).not_to be_valid
    end

    it "is not valid without status" do
        order.status = nil
        expect(order).not_to be_valid
    end

    it "is not valid with a order_type other than: in_person, delivery" do
        should define_enum_for(:order_type).with([:in_person, :delivery]).backed_by_column_of_type(:string)
    end

    it "is not valid with a payment_method other than: credit_card, debit_card, cash, other" do
        should define_enum_for(:payment_method).with([:credit_card, :debit_card, :cash, :other]).backed_by_column_of_type(:string)
    end

    it "is not valid with a status other than: preparing, on_transit, cancelled, done" do
        should define_enum_for(:status).with([:preparing, :on_transit, :cancelled, :done]).backed_by_column_of_type(:string)
    end

    # it "is not valid if client_id is different than client_id in address" do
    #     order.client_id = 2
    #     expect(order.client_id).to equal(order.address.client_id)
    # end
end