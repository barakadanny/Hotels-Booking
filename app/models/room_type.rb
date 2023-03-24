class RoomType < ApplicationRecord
  belongs_to :room
  belongs_to :rtype

  validates :room, presence: true
  validates :rtype, presence: true
end
