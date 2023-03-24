class RoomPhoto < ApplicationRecord
  belongs_to :room

  validates :name, presence: true
end
