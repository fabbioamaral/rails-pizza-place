module Pizzas
    module Crusts
        class CreationService
            attr_reader :add_crust_attributes

            def initialize(add_crust_attributes:)
                @name = add_crust_attributes.name
                @price = add_crust_attributes.price
                @size = add_crust_attributes.size
            end

            def process
                crust = PizzaCrust.create(
                    name: @name,
                    price: @price,
                    size: @size
                )
                { :status => true, :id => crust.id}
                rescue StandardError
                    false
            end
        end
    end
end

