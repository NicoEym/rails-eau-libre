class CreateSwimRaces < ActiveRecord::Migration[5.2]
  def change
    create_table :swim_races do |t|
      t.string :name
      t.string :city_name
      t.text :description
      t.date :dates
      t.float :coord_long
      t.float :coord_lat

      t.timestamps
    end
  end
end
