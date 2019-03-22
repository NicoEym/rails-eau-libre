class AddUserIdToSwimRaces < ActiveRecord::Migration[5.2]
  def change
    add_reference :swim_races, :user, foreign_key: true
  end
end
