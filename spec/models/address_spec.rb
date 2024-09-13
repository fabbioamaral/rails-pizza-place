require 'rails_helper'

RSpec.describe Address, :type => :model do
    describe "associations" do
        it { is_expected.to belong_to(:suburb) }
        it { is_expected.to belong_to(:client) }
      end

end