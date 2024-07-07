module Addresses
    class CreationService
        attr_reader :add_address_attributes

        def initialize(add_address_attributes:)
            @street = add_address_attributes.street
            @number = add_address_attributes.number
            @suburb_id = add_address_attributes.suburb_id
            @client_id = add_address_attributes.client_id
            @default = add_address_attributes.default
            @city = add_address_attributes.city
        end

        def process
            check_existing_default_address if @default
            
            address = Address.create(
                street: @street,
                number: @number,
                suburb_id: @suburb_id,
                client_id: @client_id,
                default: @default,
                city: @city

            )
                { :status => true, :id => address.id}
                rescue StandardError
                    false
        end

        def check_existing_default_address
            client_addresses = Address.where(client_id: @client_id)
            index = client_addresses.find_index { |address| address.default == true }
            client_addresses[index].update(default: false) if index
        end

    end
end