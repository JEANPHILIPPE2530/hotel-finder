class Hotel < ApplicationRecord
    validates :name, presence: true
    validates :address, presence: true
    # has_many :rooms, dependent: :destroy
end