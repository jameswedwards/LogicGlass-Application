class CoordinatorCheckIn < ApplicationRecord
  belongs_to :coordinator
  belongs_to :event
end
