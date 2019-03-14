class CreateSwimEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :swim_events do |t|
      t.float :distance

      t.timestamps
    end
  end
end
