class Room < ApplicationRecord
  belongs_to :hotel, dependent: :destroy
  has_many :room_photos, dependent: :destroy
  has_one :rtype, through: :room_type, dependent: :destroy
  has_many :services, through: :room_services , dependent: :destroy

  validates :description, presence: true
  validates :price_per_night, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
