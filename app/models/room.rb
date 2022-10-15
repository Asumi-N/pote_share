class Room < ApplicationRecord

    has_one_attached :room_image  
    validates :name, presence: true
    validates :price, presence: true
    validates :address, presence: true

end
