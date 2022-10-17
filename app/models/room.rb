class Room < ApplicationRecord

    has_one_attached :image  
    validates :name, presence: true
    validates :price, presence: true
    validates :address, presence: true
    validates :image, presence: true
    
    belongs_to :user
    has_many :reservations
end
