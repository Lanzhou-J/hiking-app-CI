class Trail < ApplicationRecord
  validates :name, presence: true
  validates_length_of :name, maximum: 75, minimum: 8
  validates :difficulty, numericality: {less_than: 5, greater_than: 0}
  validates :distance, numericality: {greater_than: 0}
  has_many :facility_trails
  has_many :facilities, through: :facility_trails
end
