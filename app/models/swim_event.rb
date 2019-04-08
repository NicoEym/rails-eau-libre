class SwimEvent < ApplicationRecord
  belongs_to :swim_race
  validates :distance, presence: true
end
