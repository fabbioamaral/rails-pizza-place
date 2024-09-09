require 'rails_helper'

RSpec.describe PizzaCrust, :type => :model do
    let(:pizza_crust) { PizzaCrust.new(name: 'Cheese Crust', price: 3, size: 'small') }
    
    it "is valid with valid attributes" do
        expect(pizza_crust).to be_valid
    end

    it "is not valid without name" do
        pizza_crust.name = ''
        expect(pizza_crust).not_to be_valid
    end

    it "is not valid without price" do
        pizza_crust.price = nil
        expect(pizza_crust).not_to be_valid
    end

    it "is not valid without size" do
        pizza_crust.size = nil
        expect(pizza_crust).not_to be_valid
    end

    it "is not valid with a size other than: small, regular, large or extra_large" do
        should define_enum_for(:size).with([:small, :large, :extra_large]).backed_by_column_of_type(:string)
    end
end