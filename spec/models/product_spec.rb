require 'rails_helper'

RSpec.describe Product, :type => :model do
    let(:product) { Product.new }

    describe "pizza validation" do
        it "is not valid without a pizza_border"
        it "is only valid with flavour1 and flavour2"
        it "is valid only with sizes small, regular, large and extra_large"
      end
    
      describe "other products validation" do
        it "is valid with valid attributes"
        it "is not valid without a name"
        it "is not valid without a price"
        it "is not valid without a category"
        it "is valid without a description"
        it "is valid without a flavour1"
        it "is valid without a flavour2"
        it "it is valid without a pizza_border"
      end
end





