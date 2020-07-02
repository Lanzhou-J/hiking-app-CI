class Facility < ApplicationRecord
  validates :name, presence: true

  has_many :facility_trails
  has_many :trails, through: :facility_trails
end
