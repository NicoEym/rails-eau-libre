class DropSwimRaceEvents < ActiveRecord::Migration[5.2]
  def change
    drop_table :swim_race_events
  end
end
