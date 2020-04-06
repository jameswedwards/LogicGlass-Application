class StudentClass < ApplicationRecord
  has_many :members, dependent: :destroy
  has_many :officers, dependent: :destroy
  has_many :coordinators, dependent: :destroy
  validates :student_class, :format => { :with => /^[a-zA-Z\s]+$/, :message => "Only letters allowed", :multiline => true }, length: { in: 2..50 }, :presence => true
  validates :description, :format => { :with => /^[a-zA-Z\s]+$/, :message => "Only letters allowed", :multiline => true }, length: { in: 2..100 }, :presence => true
end
