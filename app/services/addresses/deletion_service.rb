module Addresses
    class DeletionService
        attr_reader :id

        def initialize(id:)
            @id = id
        end

        def process
            Address.find(@id).destroy
            true
            rescue StandardError
                false
        end
    end
end

