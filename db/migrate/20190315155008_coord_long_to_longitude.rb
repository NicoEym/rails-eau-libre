class CoordLongToLongitude < ActiveRecord::Migration[5.2]
  def change
    rename_column :swim_races, :coord_long, :longitude
    rename_column :swim_races, :coord_lat, :latitude
  end
end
