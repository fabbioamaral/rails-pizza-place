module Pizzas
    module Flavours
        class CreationService
            attr_reader :add_flavour_attributes

            def initialize(add_flavour_attributes:)
                @name = add_flavour_attributes.name
                @category_flavour_id = add_flavour_attributes.category_flavour_id
            end

            def process
                flavour = Flavour.create(
                    name: @name,
                    category_flavour_id: @category_flavour_id,
                )
                { :status => true, :id => flavour.id}
                rescue StandardError
                    false
            end
        end
    end
end

