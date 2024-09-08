FactoryBot.define do
    factory :pizza, class: Product do
      name { 'Pizza Marguerita' }
      price { 80 }
      description { 'this the the description of product 1' }
      category_id { 1 }
      size { :not_applicable }
    end
end