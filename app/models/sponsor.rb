class Sponsor < ApplicationRecord
  belongs_to :sponsor_type
  has_many :events
  validates :company, :format => { :with => /\A[a-zA-Z]+\z/, :message => "Only letters allowed", :multiline => true }, length: { in: 2..50 }, :presence => true
  validates :first_name, :format => { :with => /\A[a-zA-Z]+\z/, :message => "Only letters allowed", :multiline => true }, length: { in: 2..50 }, :presence => true
  validates :last_name, :format => { :with => /\A[a-zA-Z]+\z/, :message => "Only letters allowed", :multiline => true }, length: { in: 2..50 }, :presence => true
  validates :home_phone, phone: {possible: true, allow_blank: true}, :format => { :without => /\A[a-zA-Z]+\z/, :multiline => true }
  validates :mobile_phone, phone: {possible: true, allow_blank: true}, :format => { :without => /\A[a-zA-Z]+\z/, :multiline => true }, :presence => true
end
