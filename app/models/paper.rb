class Paper < ApplicationRecord
  has_and_belongs_to_many :authors

  validates :title, :venue, presence: true
  validates :year, presence: true, numericality: { only_integer: true }

  scope :year, -> (year) { where(year: year) }
end
