class Service < ApplicationRecord
  has_many :rooms, through: :room_services, dependent: :destroy

  validates :name, presence: true
  validates :icon, presence: true
end
