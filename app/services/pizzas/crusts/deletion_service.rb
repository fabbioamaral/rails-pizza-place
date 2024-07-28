module Pizzas
    module Crusts
        class DeletionService
            attr_reader :id

            def initialize(id:)
                @id = id
            end

            def process
                PizzaCrust.find(@id).destroy
                true
                rescue StandardError
                    false
            end
        end
    end
end

