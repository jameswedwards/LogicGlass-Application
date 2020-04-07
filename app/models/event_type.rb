class EventType < ApplicationRecord
  has_many :events, dependent: :destroy
  validates :event_type, :format => { :with => /^[a-zA-Z\s]+$/, :message => "Only letters allowed", :multiline => true }, length: { in: 2..50 }, :presence => true
  validates :description, :format => { :with => /^[a-zA-Z\s]+$/, :message => "Only letters allowed", :multiline => true }, length: { in: 2..100 }, :allow_blank => true
end
