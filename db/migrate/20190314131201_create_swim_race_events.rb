class CreateSwimRaceEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :swim_race_events do |t|
      t.references :swim_race, foreign_key: true
      t.references :swim_event, foreign_key: true
      t.float :price
      t.string :equipment

      t.timestamps
    end
  end
end
