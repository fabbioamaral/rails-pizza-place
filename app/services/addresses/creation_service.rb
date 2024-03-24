module Addresses
    class CreationService
        attr_reader :add_address_attributes

        def initialize(add_address_attributes:)
            @street = add_address_attributes.street
            @number = add_address_attributes.number
            @suburb_id = add_address_attributes.suburb_id
            @client_id = add_address_attributes.client_id
            @default = add_address_attributes.default
        end

        def process
            address = Address.create(
                street: @street,
                number: @number,
                suburb_id: @suburb_id,
                client_id: @client_id,
                default: @default
            )
            { :status => true, :id => address.id}
            rescue StandardError
                false
        end
    end
end