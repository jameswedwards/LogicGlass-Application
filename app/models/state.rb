class State < ApplicationRecord
  belongs_to :country
  has_many :members, dependent: :destroy
  has_many :coordinators, dependent: :destroy
  has_many :officers, dependent: :destroy
  has_many :events, dependent: :destroy
  validates :name, :format => { :with => /^[a-zA-Z\s]+$/, :message => "Only letters allowed", :multiline => true }, length: { in: 2..50 }, :presence => true
  validates :state_abbreviation, :format => { :with => /\A[a-zA-Z]+\z/, :message => "Only letters allowed. Spaces, numbers, or other characters are not allowed.", :multiline => true }, length: { is: 2 }, :presence => true
end
