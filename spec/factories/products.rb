FactoryBot.define do
    factory :product do
      name { 'product 1' }
      price { 80 }
      description { 'this the the description of product 1' }
      category { create(:category) }
      size { :not_applicable }
    end
end