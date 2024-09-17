module Clients
    class CreationService
        attr_reader :add_client_attributes

        def initialize(add_client_attributes:)
            @name = add_client_attributes[:name]
            @phone = add_client_attributes[:phone]
        end

        def process
            Client.create!(
                name: @name,
                phone: @phone,
            )
            { :status => true }
            rescue StandardError
                { :status => false }
        end
    end
end

