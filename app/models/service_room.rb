class ServiceRoom < ApplicationRecord
  belongs_to :room
  belongs_to :service
end
