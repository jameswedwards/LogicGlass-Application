class Member < ApplicationRecord
  belongs_to :state
  belongs_to :country
  belongs_to :student_class
  belongs_to :member_status
  has_many :member_check_ins
  validates :peoplesoft_id, :format => { :with => /^[0-9]*$/ , :message => "Only numbers allowed", :multiline => true }, length: { is: 7 }, :presence => true
  validates :first_name, :format => { :with => /\A[a-zA-Z]+\z/, :message => "Only letters allowed", :multiline => true }, length: { in: 2..50 }, :presence => true
  validates :middle_initial, :format => { :with => /\A[a-zA-Z]+\z/, :message => "Only a letter allowed", :multiline => true }, length: { is: 1 }, :presence => true
  validates :last_name, :format => { :with => /\A[a-zA-Z]+\z/, :message => "Only letters allowed", :multiline => true }, length: { in: 2..50 }, :presence => true
  validates :address, length: {maximum: 50}, :presence => true
  validates :city, length: {maximum: 50}, :presence => true
  validates :zip, zipcode: { country_code: :es }, :presence => true
  validates :home_phone, phone: {possible: true, allow_blank: true}, :format => { :without => /\A[a-zA-Z]+\z/, :multiline => true }
  validates :mobile_phone, phone: {possible: true, allow_blank: true}, :format => { :without => /\A[a-zA-Z]+\z/, :multiline => true }, :presence => true
  validates :major, :format => { :with => /\A[a-zA-Z]+\z/, :message => "Only letters allowed", :multiline => true }, length: {maximum: 50}, :presence => true
end
