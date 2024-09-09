FactoryBot.define do
    factory :pizza, class: Product do
      name { 'Pizza Marguerita' }
      price { 80 }
      description { 'this the the description of product 1' }
      category { create(:category_pizza) }
      pizza_crust_id { 1 }
      flavour1_id { 1 }
      size { :large }
    end
end