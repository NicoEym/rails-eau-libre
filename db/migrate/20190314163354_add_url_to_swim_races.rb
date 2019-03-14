class AddUrlToSwimRaces < ActiveRecord::Migration[5.2]
  def change
    add_column :swim_races, :source_url, :string
    add_column :swim_races, :image_url, :string
  end
end
