module Clients
    class DeletionService
        attr_reader :id

        def initialize(id:)
            @id = id
        end

        def process
            Client.find(@id).destroy
            true
            rescue StandardError
                false
        end
    end
end

