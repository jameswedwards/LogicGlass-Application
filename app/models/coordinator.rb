class Coordinator < ApplicationRecord
  belongs_to :state
  belongs_to :country
  belongs_to :student_class
  belongs_to :coordinator_status
  belongs_to :coordinator_position
  has_many :coordinator_check_ins
end
