module Types
    class AddressType < BaseObject
        field :id, ID, null: false
        field :street, String, null: false
        field :number, String, null: false
        field :suburb_id, ID, null: false
        field :client_id, ID, null: false
    end
end
