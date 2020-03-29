class Member < ApplicationRecord
  belongs_to :state
  belongs_to :country
  belongs_to :student_class
  belongs_to :member_status
  has_many :member_check_ins
end
