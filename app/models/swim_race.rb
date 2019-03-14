class SwimRace < ApplicationRecord
  has_many :swim_race_events
  has_many :swim_events, through: :swim_race_events
end
