FactoryBot.define do
    factory :client do
      name { 'Client 1' }
      phone { 444987431 }
      addresses { [ create(:address) ] }
    end
end