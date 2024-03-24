module Addresses
    class UpdateService
        attr_reader :update_address_attributes

        def initialize(update_address_attributes:)
            @address = Product.find(update_address_attributes.id)
        
            @street = update_address_attributes.street || @address.street
            @number = update_address_attributes.number || @address.number
            @suburb_id = update_address_attributes.suburb_id || @address.suburb_id
            @client_id = update_address_attributes.client_id || @address.client_id 
        end

        def process
            @address.update(
                street: @street,
                number: @number,
                suburb_id: @suburb_id,
                client_id: @client_id,
            )
            true
            rescue StandardError
                false
        end
    end
end

