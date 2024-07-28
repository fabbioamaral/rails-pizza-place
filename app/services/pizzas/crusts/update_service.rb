module Pizzas
    module Crusts
        class UpdateService
            attr_reader :update_crust_attributes

            def initialize(update_crust_attributes:)
                @crust = PizzaCrust.find(update_crust_attributes.id)
            
                @name = update_crust_attributes.name || @crust.name
                @price = update_crust_attributes.price || @crust.price
                @size = update_crust_attributes.size || @crust.size
            end

            def process
                #binding.pry
                @crust.update(
                    name: @name,
                    price: @price,
                    size: @size
                )
                @crust.save
                true
                rescue StandardError
                    false
            end
        end
    end
end

