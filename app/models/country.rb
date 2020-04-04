class Country < ApplicationRecord
  has_many :members
  has_many :coordinators
  has_many :officers
  has_many :events
  validates :name, :format => { :with => /\A[a-zA-Z]+\z/, :message => "Only letters allowed", :multiline => true }, length: { in: 2..50 }, :presence => true
  validates :country_abbreviation, :format => { :with => /\A[a-zA-Z]+\z/, :message => "Only letters allowed", :multiline => true }, length: { is: 2 }, :presence => true
end
