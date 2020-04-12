class MemberCheckIn < ApplicationRecord
  belongs_to :member
  belongs_to :event
  
  def self.search(search)
    if search 
     self.joins(:member,:event).where(
       'members.last_name LIKE ? OR events.description LIKE ? OR members.first_name LIKE ?',
        "%#{search}%", "%#{search}%","%#{search}%")
    
    else 
      self.all
    end
  end
end
