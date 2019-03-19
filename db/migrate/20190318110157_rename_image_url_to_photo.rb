class RenameImageUrlToPhoto < ActiveRecord::Migration[5.2]
  def change
    rename_column :swim_races, :image_url, :photo
  end
end
