module Pizzas
    module Flavours
        class DeletionService
            attr_reader :id

            def initialize(id:)
                @id = id
            end

            def process
                Flavour.find(@id).destroy
                true
                rescue StandardError
                    false
            end
        end
    end
end

