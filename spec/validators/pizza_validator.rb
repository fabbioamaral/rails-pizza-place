require 'rails_helper'

RSpec.describe PizzaValidator do
    subject(:record) { create(:pizza) }
    let(:category_pizza) { create(:category_pizza) }

    before do 
        allow(Category).to receive(:find).with(record.category_id).and_return(category_pizza)
    end

    context "when pizza does not have a crust", :aggregate_failures do
        it "generates an error" do
            record.pizza_border_id = nil
            record.valid?

            expect(record.errors[:pizza_border_id]).to include(/Missing pizza crust/)
            expect(record).not_to be_valid
        end
    end
end