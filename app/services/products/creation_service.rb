module Products
    class CreationService
        attr_reader :add_products_attributes

        def initialize(add_products_attributes:)
            @name = add_products_attributes.name
            @price = add_products_attributes.price
            @description = add_products_attributes.description
            @flavour1_id = add_products_attributes.flavour1_id
            @flavour2_id = add_products_attributes.flavour2_id
            @category_id = add_products_attributes.category_id
            @pizza_border_id = add_products_attributes.pizza_border_id
            @size = add_products_attributes.size
        end

        def process
            Product.create(
                name: @name,
                price: @price,
                description: @description,
                flavour1_id: @flavour1_id,
                flavour2_id: @flavour2_id,
                category_id: @category_id,
                pizza_border_id: @pizza_border_id,
                size: @size
            )
            true
            rescue StandardError
                false
        end
    end
end

