require 'rails_helper'

RSpec.describe Clients::CreationService do
    subject(:service) { described_class.new(add_client_attributes: params) }



    describe "#process" do
        context "when parameters provided are valid" do
            let(:params) do
                {
                   name: 'Client Name',
                   phone: '9999999',
                }
            end

            it "creates a client" do
                status_success = { :status => true }
                result = service.process
                expect(result).to eq(status_success)
            end
        end

        context "when parameters provided are invalid" do
            let(:params) do
                {
                   name: 'Client Name',
                }
            end

            it "does not create a client" do
                status_failed = { :status => false }
                result = service.process
                expect(result).to eq(status_failed)
            end
        end
    end

end