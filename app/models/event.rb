class Event < ApplicationRecord
  belongs_to :event_type
  belongs_to :event_status
  belongs_to :sponsor
  belongs_to :state
  belongs_to :country
  has_many :member_check_ins, dependent: :destroy
  has_many :coordinator_check_ins, dependent: :destroy
  has_many :officer_check_ins, dependent: :destroy
  accepts_nested_attributes_for :event_type, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :event_status, reject_if: :all_blank, allow_destroy: true
  validates :description, :format => { :with => /^[a-zA-Z0-9.:!\s]+$/, :message => "Only letters, numbers, and certain characters allowed", :multiline => true }, length: { in: 2..100 }, :presence => true
  validates :fee, :format => { :with => /^(\d{0,5}\.\d{1,2}|\d{1,5})$/, :message => "Only numbers and up to 2 decimal points allowed", :multiline => true }, :presence => true
  validates :building_name, length: {maximum: 50}, :allow_blank => true
  validates :city, length: {maximum: 50}, :presence => true
  validates :zip, zipcode: { country_code: :es }, :presence => true
  def self.search(search)
      if search
       self.joins(:event_type, :sponsor).where(
         'event_types.event_type LIKE ? OR events.description LIKE ?
         OR sponsors.first_name LIKE ? OR sponsors.last_name LIKE ?',
         "%#{search}%", "%#{search}%","%#{search}%","%#{search}%")

      else
        self.all
      end
    end
  end
