class Client < ApplicationRecord
    validates :name, presence: true
    validates :phone, presence: true

    has_many :addresses

end
