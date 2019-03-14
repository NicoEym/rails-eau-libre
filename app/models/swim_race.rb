class SwimRace < ApplicationRecord
  has_many :events, through: :swim_race_events
end
