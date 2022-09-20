class Booking < ApplicationRecord
    belongs_to :user
    belongs_to :room
    validates :start, presence: true
    validates :end, presence: true
end