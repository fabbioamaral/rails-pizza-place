module Products
    class UpdateService
        attr_reader :update_products_attributes

        def initialize(update_products_attributes:)
            #binding.pry
            @product = Product.find(update_products_attributes.id)
        
            @name = update_products_attributes.name || @product.name
            @price = update_products_attributes.price || @product.price
            @description = update_products_attributes.description || @product.description
            @flavour1_id = update_products_attributes.flavour1_id || @product.flavour1_id 
            @flavour2_id = update_products_attributes.flavour2_id || @product.flavour2_id
            @category_id = update_products_attributes.category_id || @product.category_id
            @pizza_crust_id = update_products_attributes.pizza_crust_id || @product.pizza_crust_id
            @size = update_products_attributes.size || @product.size
        end

        def process
            @product.update(
                name: @name,
                price: @price,
                description: @description,
                flavour1_id: @flavour1_id,
                flavour2_id: @flavour2_id,
                category_id: @category_id,
                pizza_crust_id: @pizza_crust_id,
                size: @size
            )
            true
            rescue StandardError
                false
        end
    end
end

