module Clients
    class UpdateService
        attr_reader :update_client_attributes

        def initialize(update_client_attributes:)
            @client = Client.find(update_client_attributes.id)
        
            @name = update_client_attributes.name || @client.name
            @phone = update_client_attributes.phone || @client.phone
            @address = update_client_attributes.address || @client.address
            @notes = update_client_attributes.notes || @client.notes 

        end

        def process
            @client.update!(
                name: @name,
                phone: @phone,
                address: @address,
                notes: @notes,
            )
            true
            rescue StandardError
                false
        end
    end
end

