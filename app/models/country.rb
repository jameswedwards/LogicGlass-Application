class Country < ApplicationRecord
  has_many :members
  has_many :coordinators
  has_many :officers
  has_many :events
  validates :name, :country_abbreviation, :presence => true
end
