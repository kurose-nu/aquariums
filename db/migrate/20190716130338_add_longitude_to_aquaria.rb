class AddLongitudeToAquaria < ActiveRecord::Migration[5.2]
  def change
    add_column :aquaria, :Longitude, :float
  end
end
