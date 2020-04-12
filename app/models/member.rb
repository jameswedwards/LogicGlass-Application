class Member < ApplicationRecord
  belongs_to :state
  belongs_to :country
  belongs_to :student_class
  belongs_to :member_status
  has_many :member_check_ins, dependent: :destroy
  def full_name
  "#{first_name} #{last_name}"
  end
  accepts_nested_attributes_for :member_status, reject_if: :all_blank, allow_destroy: true
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
  def self.search(search)
    if search
      self.joins(:member_status).where(
        ["members.first_name LIKE ? OR members.last_name LIKE ? OR members.major LIKE ? OR member_statuses.status LIKE ? ",
      "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%"])
    else

      self.all
    end
  end
end 
