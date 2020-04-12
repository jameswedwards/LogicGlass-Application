class Sponsor < ApplicationRecord
  belongs_to :sponsor_type
  has_many :events, dependent: :destroy
  def full_name
  "#{first_name} #{last_name}"
  end
  accepts_nested_attributes_for :sponsor_type, reject_if: :all_blank, allow_destroy: true
  validates :company, :format => { :with => /^[a-zA-Z\s]+$/, :message => "Only letters allowed", :multiline => true }, length: { in: 2..50 }, :presence => true
  validates :first_name, :format => { :with => /^[a-zA-Z\s]+$/, :message => "Only letters allowed", :multiline => true }, length: { in: 2..50 }, :presence => true
  validates :last_name, :format => { :with => /^[a-zA-Z\s]+$/, :message => "Only letters allowed", :multiline => true }, length: { in: 2..50 }, :presence => true
  validates :home_phone, phone: {possible: true, allow_blank: true}, :format => { :without => /^[a-zA-Z\s]+$/, :multiline => true }
  validates :mobile_phone, phone: {possible: true, allow_blank: true}, :format => { :without => /^[a-zA-Z\s]+$/, :multiline => true }, :presence => true
 
  def self.search(search)
    if search 
      self.joins(:sponsor_type).where(
        ["sponsors.first_name LIKE ? OR sponsors.last_name LIKE ? OR sponsors.company LIKE ? OR sponsor_types.sponsor_type LIKE ? ", 
      "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%"])
    else 
    
      self.all
    end
  end
end
