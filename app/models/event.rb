class Event < ApplicationRecord
  belongs_to :event_type
  belongs_to :event_status
  belongs_to :sponsor
  belongs_to :state
  belongs_to :country
  has_many :member_check_ins
  has_many :coordinator_check_ins
  has_many :officer_check_ins
end
