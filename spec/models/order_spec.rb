# spec/models/auction_spec.rb

require 'rails_helper'

RSpec.describe Order, :type => :model do
    let(:order) { create(:order) }
    
    it "is valid with valid attributes" do
        expect(order).to be_valid
    end

    context "when any attributes are missing" do
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
    end

    context "testing enums" do
        it "is not valid with a order_type other than: in_person, delivery" do
            should define_enum_for(:order_type).with_values([:in_person, :delivery]).backed_by_column_of_type(:integer)
        end
    
        it "is not valid with a payment_method other than: credit_card, debit_card, cash, other" do
            should define_enum_for(:payment_method).with_values([:credit_card, :debit_card, :cash, :other]).backed_by_column_of_type(:integer)
        end
    
        it "is not valid with a status other than: preparing, on_transit, cancelled, done" do
            should define_enum_for(:status).with_values([:preparing, :on_transit, :cancelled, :done]).backed_by_column_of_type(:integer)
        end
    end
end