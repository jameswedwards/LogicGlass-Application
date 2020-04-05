class Event < ApplicationRecord
  belongs_to :event_type
  belongs_to :event_status
  belongs_to :sponsor
  belongs_to :state
  belongs_to :country
  has_many :member_check_ins
  has_many :coordinator_check_ins
  has_many :officer_check_ins
  accepts_nested_attributes_for :event_type, reject_if: :all_blank, allow_destroy: true
  validates :description, :format => { :with => /^[a-zA-Z\s]+$/, :message => "Only letters allowed", :multiline => true }, length: { in: 2..100 }, :presence => true
  validates :fee, :format => { :with => /^(\d{0,5}\.\d{1,2}|\d{1,5})$/, :message => "Only numbers and up to 2 decimal points allowed", :multiline => true }, length: { is: 1 }, :presence => true
  validates :building_name, length: {maximum: 50}, :presence => true
  validates :city, length: {maximum: 50}, :presence => true
  validates :zip, zipcode: { country_code: :es }, :presence => true
end
