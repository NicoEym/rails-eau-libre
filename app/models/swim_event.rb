class SwimEvent < ApplicationRecord
  has_many :swim_race_events
  has_many :swim_races, through: :swim_race_events
end
