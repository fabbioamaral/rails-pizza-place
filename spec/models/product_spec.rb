require 'rails_helper'

RSpec.describe Product, :type => :model do
    subject(:product) { create(:product) }
    let(:pizza) { create(:pizza) }

    describe "a pizza" do
      it "is not valid without a pizza_crust" do
        pizza.pizza_crust_id = nil
        expect(pizza).not_to be_valid
      end

      it "is not valid without flavour1" do
        pizza.flavour1_id = nil
        expect(pizza).not_to be_valid
      end

      it "is not valid without size" do
        pizza.size = nil
        expect(pizza).not_to be_valid
      end
    end
    
    describe "a product other than pizza" do
      context "when there's no missing or invalid attributes" do
        it "is valid" do
          expect(product).to be_valid
        end
      end
      
      context "when there are missing mandatory attributes" do
        it "is not valid without a name" do
          product.name = nil
          expect(product).not_to be_valid
        end

        it "is not valid without a price" do
          product.price = nil
          expect(product).not_to be_valid
        end

        it "is not valid without a category" do
          product.category_id = nil
          expect(product).not_to be_valid
        end
      end

      context "when there are missing non-mandatory attributes" do
        it "is valid without a description" do
          product.description = nil
          expect(product).to be_valid
        end

        it "is valid without a pizza crust" do
          product.pizza_crust_id = nil
          expect(product).to be_valid
        end

        it "is valid without pizza flavours", :aggregate_failures do
          product.flavour1_id = nil
          product.flavour1_id = nil
          expect(product).to be_valid
        end

        it "is valid without size", :aggregate_failures do
          product.size = nil
          expect(product).to be_valid
        end
      end
    end

    describe "checks method pizza?" do
      context "when product is a pizza" do
        it "should return true" do
          expect(pizza.pizza?).to be(true)
        end
      end

      context "when product is not a pizza" do
        it "should return false" do
          expect(product.pizza?).to be(false)
        end
      end

      context "when product category is not valid" do
        it "should return false" do
          allow(Category).to receive(:find).with(product.category_id).and_return(nil)
          expect(product.pizza?).to be(false)
        end
      end
    end

    describe "associations" do
      it { is_expected.to belong_to(:category) }
      it { is_expected.to belong_to(:pizza_crust).optional(true) }
      it { is_expected.to have_many(:order_products) }
    end
end





