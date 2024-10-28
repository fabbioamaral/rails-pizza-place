module Types
  module Clients
      class UpdateClientAttributesType < Types::BaseInputObject
        argument :id, ID, required: true  
        argument :name, String, required: false
        argument :phone, String, required: false
        argument :notes, String, required: false
      end
  end
end
