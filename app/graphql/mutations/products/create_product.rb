module Mutations
    module Products
        class CreateProduct < Mutations::BaseMutation
            argument :name, String, required: true
            argument :price, Integer, required: true
            argument :flavour1_id, ID, required: false
            argument :flavour2_id, ID, required: false
            argument :category_id, ID, required: true
            argument :pizza_border_id, ID, required: false
            argument :size, String, required: true

            field :product, Types::ProductType, null: true, description: 'Returns added product'

            def resolve(name:, price:, flavour1_id:, flavour2_id:, category_id:, pizza_border_id:, size:)
                Product.new(
                    name: name,
                    price: price,
                    flavour1_id: flavour1_id,
                    flavour2_id: flavour2_id,
                    category_id: category_id,
                    pizza_border_id: pizza_border_id,
                    size: size
                )
            end


        end
        
    end
end
