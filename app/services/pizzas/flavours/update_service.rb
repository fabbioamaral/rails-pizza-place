module Pizzas
    module Flavours
        class UpdateService
            attr_reader :update_flavour_attributes

            def initialize(update_flavour_attributes:)
                @flavour = Flavour.find(update_flavour_attributes.id)
            
                @name = update_flavour_attributes.name || @flavour.name
                @category_flavour_id = update_flavour_attributes.category_flavour_id || @flavour.category_flavour_id
            end

            def process
                @flavour.update(
                    name: @name,
                    category_flavour_id: @category_flavour_id
                )
                @flavour.save
                true
                rescue StandardError
                    false
            end
        end
    end
end

