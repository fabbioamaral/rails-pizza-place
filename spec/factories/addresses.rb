FactoryBot.define do
    factory :address do
      street { 'Street A' }
      number { 80 }
      suburb_id { create(:suburb).id }
    end
end