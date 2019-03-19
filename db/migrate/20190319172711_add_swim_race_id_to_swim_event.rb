class AddSwimRaceIdToSwimEvent < ActiveRecord::Migration[5.2]
  def change
    add_reference :swim_events, :swim_race, foreign_key: true
  end
end
