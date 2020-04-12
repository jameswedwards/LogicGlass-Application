class CoordinatorCheckIn < ApplicationRecord
  belongs_to :coordinator
  belongs_to :event
  def self.search(search)
      if search
       self.joins(:coordinator, :event).where(
         'coordinators.last_name LIKE ? OR events.description LIKE ? OR coordinators.first_name LIKE ?',
         "%#{search}%", "%#{search}%","%#{search}%")

      else
        self.all
      end
    end
  end 
