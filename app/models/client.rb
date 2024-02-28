class Client < ApplicationRecord
    validates :name, presence: true
    validates :phone, presence: true, uniqueness: true

    has_many :addresses

end
