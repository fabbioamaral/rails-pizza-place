# spec/models/auction_spec.rb

require 'rails_helper'

RSpec.describe Category, :type => :model do
    let(:category) { Category.new }
  
    it "is valid with valid attributes" do
    category.name = 'Drinks'
    expect(category).to be_valid
  end

  it "is not valid without a name" do
    category.name = ''
    expect(category).to_not be_valid
  end

  it "is not valid with a name with less than 2 characters" do
    category.name = 'D'
    expect(category).to_not be_valid
  end
end