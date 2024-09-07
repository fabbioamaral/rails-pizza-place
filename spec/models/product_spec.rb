require 'rails_helper'

RSpec.describe Product, :type => :model do
    subject(:product) { create(:product) }
    let(:category_pizza) { create(:category_pizza) }
    let(:category_other_product) { create(:category) }

    # describe "pizza validation" do
    #     it "is not valid without a pizza_border"
    #     # it "is only valid with flavour1 and flavour2"
    #     # it "is valid only with sizes small, regular, large and extra_large"
    #   end
    
    describe "other products validation" do
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

        it "is valid without a pizza border" do
          product.pizza_border_id = nil
          expect(product).to be_valid
        end

        it "is valid without pizza flavours", :aggregate_failures do
          product.flavour1_id = nil
          product.flavour1_id = nil
          expect(product).to be_valid
        end
      end
    end

    describe "checks method pizza?" do
      context "when product is a pizza" do
        it "should return true" do
          allow(Category).to receive(:find).with(product.category_id).and_return(category_pizza)
          expect(product.pizza?).to be(true)
        end
      end

      context "when product is not a pizza" do
        it "should return false" do
          allow(Category).to receive(:find).with(product.category_id).and_return(category_other_product)
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
end





