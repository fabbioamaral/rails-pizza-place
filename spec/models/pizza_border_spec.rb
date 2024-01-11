# spec/models/auction_spec.rb

require 'rails_helper'

RSpec.describe PizzaBorder, :type => :model do
    let(:pizza_border) { PizzaBorder.new(name: 'Cheese Crust', price: 3, size: 'small') }
    
    it "is valid with valid attributes" do
        expect(pizza_border).to be_valid
    end

    it "is not valid without name" do
        pizza_border.name = ''
        expect(pizza_border).not_to be_valid
    end

    it "is not valid without price" do
        pizza_border.price = nil
        expect(pizza_border).not_to be_valid
    end

    it "is not valid without size" do
        pizza_border.size = nil
        expect(pizza_border).not_to be_valid
    end

    it "is not valid with a size other than: small, regular, large or extra_large" do
        should define_enum_for(:size).with([:small, :large, :extra_large]).backed_by_column_of_type(:string)
    end
end