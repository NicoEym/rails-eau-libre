class AddPriceToSwimEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :swim_events, :price, :float
    add_column :swim_events, :comment, :text
  end
end
