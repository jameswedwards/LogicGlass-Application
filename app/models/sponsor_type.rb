class SponsorType < ApplicationRecord
  has_many :sponsors, dependent: :destroy
  validates :sponsor_type, :format => { :with => /^[a-zA-Z\s]+$/, :message => "Only letters allowed", :multiline => true }, length: { in: 2..50 }, :presence => true
  validates :description, :format => { :with => /^[a-zA-Z\s]+$/, :message => "Only letters allowed", :multiline => true }, length: { in: 2..100 }, :presence => true
end
