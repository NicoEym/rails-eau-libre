class SwimEvent < ApplicationRecord
  has_many :races, through: :swim_race_events
end
