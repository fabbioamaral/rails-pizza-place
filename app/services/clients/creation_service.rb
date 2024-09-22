module Clients
    class CreationService
        attr_reader :add_client_attributes

        def initialize(add_client_attributes:)
            @name = add_client_attributes[:name]
            @phone = add_client_attributes[:phone]
            @notes = add_client_attributes[:notes]
            @address = add_client_attributes[:address]
        end

        def process
            result = Client.create!(
                name: @name,
                phone: @phone,
                notes: @notes
                )
                @client_id = result.id
                
                create_address
                { :status => true }
            rescue StandardError => e
                { :status => false, :error => "Error message: #{e.message}" }
            end
            
            private 
            
            def address_attributes
                OpenStruct.new({
                    street: @address[:street],
                    number: @address[:number],
                    suburb_id: @address[:suburb_id],
                    city: @address[:city],
                    client_id: @client_id,
                    default: true
                })
            end
            
            def create_address
                # binding.pry 
            ::Addresses::CreationService.new(
                add_address_attributes: address_attributes
            ).process
        end
    end
end

