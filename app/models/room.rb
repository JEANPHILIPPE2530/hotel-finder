class Room < ApplicationRecord
    # validates :price
    # validates :capacity
    belongs_to :hotel
    has_many :bookings, dependent: :destroy
end