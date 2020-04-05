class State < ApplicationRecord
  belongs_to :country
  has_many :members
  has_many :coordinators
  has_many :officers
  has_many :events
  validates :name, :format => { :with => /^[a-zA-Z\s]+$/, :message => "Only letters allowed", :multiline => true }, length: { in: 2..50 }, :presence => true
  validates :state_abbreviation, :format => { :with => /\A[a-zA-Z]+\z/, :message => "Only letters allowed. Spaces, numbers, or other characters are not allowed.", :multiline => true }, length: { is: 2 }, :presence => true
end
