class Trail < ApplicationRecord
  validates :name, presence: true
  validates :difficulty, numericality: {less_than: 5}
  has_many :facility_trails
  has_many :facilities, through: :facility_trails
end
