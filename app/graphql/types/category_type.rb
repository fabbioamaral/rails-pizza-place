module Types
    class CategoryType < BaseObject
        field :id, ID, null: false
        field :name, String, null: false
    end
end
