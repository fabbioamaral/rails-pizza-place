module Addresses
    class CreationService
        attr_reader :add_addresses_attributes

        def initialize(add_addresses_attributes:)
            @street = add_addresses_attributes.street
            @number = add_addresses_attributes.number
            @suburb_id = add_addresses_attributes.suburb_id
            @client_id = add_addresses_attributes.client_id
        end

        def process
            address = Address.create(
                street: @street,
                number: @number,
                suburb_id: @suburb_id,
                client_id: @client_id,

            )
            { :status => true, :id => address.id}
            rescue StandardError
                false
        end
    end
end