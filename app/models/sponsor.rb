class Sponsor < ApplicationRecord
  belongs_to :sponsor_type
  has_many :events
end
