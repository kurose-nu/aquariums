class RemoveLatitudeFromAquaria < ActiveRecord::Migration[5.2]
  def change
    remove_column :aquaria, :Latitude, :float
  end
end
