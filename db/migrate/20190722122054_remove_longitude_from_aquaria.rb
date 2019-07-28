class RemoveLongitudeFromAquaria < ActiveRecord::Migration[5.2]
  def change
    remove_column :aquaria, :Longitude, :float
  end
end
