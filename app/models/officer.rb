class Officer < ApplicationRecord
  belongs_to :state
  belongs_to :country
  belongs_to :student_class
  belongs_to :officer_status
  belongs_to :officer_position
  has_many :officer_check_ins, dependent: :destroy
  def full_name
  "#{first_name} #{last_name}"
  end
  accepts_nested_attributes_for :officer_status, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :officer_position, reject_if: :all_blank, allow_destroy: true
  validates :peoplesoft_id, :format => { :with => /^[0-9]*$/ , :message => "Only numbers allowed", :multiline => true }, length: { is: 7 }, :presence => true
  validates :first_name, :format => { :with => /^[a-zA-Z\s]+$/, :message => "Only letters allowed", :multiline => true }, length: { in: 2..50 }, :presence => true
  validates :middle_initial, :format => { :with => /^[a-zA-Z\s]+$/, :message => "Only a letter allowed", :multiline => true }, length: { is: 1 }, :allow_blank => true
  validates :last_name, :format => { :with => /^[a-zA-Z\s]+$/, :message => "Only letters allowed", :multiline => true }, length: { in: 2..50 }, :presence => true
  validates :address, length: {maximum: 50}, :presence => true
  validates :city, length: {maximum: 50}, :presence => true
  validates :zip, zipcode: { country_code: :es }, :presence => true
  validates :home_phone, phone: {possible: true, allow_blank: true}, :format => { :without => /^[a-zA-Z\s]+$/, :multiline => true }
  validates :mobile_phone, phone: {possible: true, allow_blank: true}, :format => { :without => /^[a-zA-Z\s]+$/, :multiline => true }, :presence => true
  validates :major, :format => { :with => /^[a-zA-Z\s]+$/, :message => "Only letters allowed", :multiline => true }, length: {maximum: 50}, :presence => true
end
