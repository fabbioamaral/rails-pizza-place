module Types
    class ProductType < BaseObject
        field :id, ID, null: false
        field :name, String, null: false
        field :price, Int, null: false
        field :description, String, null: true
        field :category_id, ID, null: false
        field :border_id, ID, null: true
        field :flavour1_id, ID, null: true
        field :flavour2_id, ID, null: true
        field :size, ID, null: true
    end
end
