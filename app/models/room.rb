class Room < ApplicationRecord
  belongs_to :hotel
  has_many :service_rooms
  has_many :services, through: :service_rooms , dependent: :destroy
  has_one :room_type
  has_one :rtype, through: :room_type, dependent: :destroy
  has_many :room_photos, dependent: :destroy

  validates :description, presence: true
  validates :price_per_night, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
