class State < ApplicationRecord
  belongs_to :country
  has_many :members
  has_many :coordinators
  has_many :officers
  has_many :events
  validates :name, :state_abbreviation, :presence => true
end
