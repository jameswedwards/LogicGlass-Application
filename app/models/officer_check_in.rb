class OfficerCheckIn < ApplicationRecord
  belongs_to :officer
  belongs_to :event
  def self.search(search)
  if search
   self.joins(:officer, :event).where(
     'officers.last_name LIKE ? OR events.description LIKE ? OR officers.first_name LIKE ?',
     "%#{search}%", "%#{search}%","%#{search}%")

  else
    self.all
  end
end
end
