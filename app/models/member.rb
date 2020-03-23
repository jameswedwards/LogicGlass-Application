class Member < ApplicationRecord
  belongs_to :state
  belongs_to :country
  belongs_to :student_class
  has_many :member_check_ins
end
