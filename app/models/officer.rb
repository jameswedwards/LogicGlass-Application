class Officer < ApplicationRecord
  belongs_to :state
  belongs_to :country
  belongs_to :student_class
  belongs_to :officer_status
  belongs_to :officer_position
  has_many :officer_check_ins
end
