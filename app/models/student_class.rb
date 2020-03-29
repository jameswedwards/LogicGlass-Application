class StudentClass < ApplicationRecord
  has_many :members
  has_many :officers
  has_many :coordinators
end
