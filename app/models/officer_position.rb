class OfficerPosition < ApplicationRecord
  has_many :officers
  validates :position, :format => { :with => /\A[a-zA-Z]+\z/, :message => "Only letters allowed", :multiline => true }, length: { in: 2..50 }, :presence => true
  validates :description, :format => { :with => /\A[a-zA-Z]+\z/, :message => "Only letters allowed", :multiline => true }, length: { in: 2..100 }, :presence => true
end
