require 'rails_helper'

RSpec.describe PizzaValidator do
    subject(:record) { create(:pizza) }
    let(:category_pizza) { create(:category_pizza) }

    before do 
        allow(Category).to receive(:find).with(record.category_id).and_return(category_pizza)
    end

    describe "crust" do
        context "when pizza does not have a crust", :aggregate_failures do
            it "generates an error" do
                record.pizza_crust_id = nil
                record.valid?
    
                expect(record.errors[:pizza_crust_id]).to include(/Missing pizza crust/)
                expect(record).not_to be_valid
            end
        end
    
        context "when pizza has a crust", :aggregate_failures do
            it "does not generate an error" do
                expect(record.errors[:pizza_crust_id]).not_to include(/Missing pizza crust/)
                expect(record).to be_valid
            end
        end
    end

    describe "flavour" do
        context "when pizza does not have flavour1 defined" do
            it "generates an error" do
                record.flavour1_id = nil
                record.valid?
    
                expect(record.errors[:flavour1_id]).to include(/Missing pizza flavour/)
                expect(record).not_to be_valid
            end
        end

        context "when pizza has flavour1 defined" do
            it "does not generate an error" do    
                expect(record.errors[:flavour1_id]).not_to include(/Missing pizza flavour/)
                expect(record).to be_valid
            end
        end
    end

    describe "size" do
        context "when the pizza size is not defined" do
            it "generates an error" do
                record.size = nil
                record.valid?
    
                expect(record.errors[:size]).to include(/Missing pizza size/)
                expect(record).not_to be_valid
            end
        end

        context "when the pizza size is defined" do
            it "does not generate an error" do    
                expect(record.errors[:size]).not_to include(/Missing pizza size/)
                expect(record).to be_valid
            end
        end
    end
end