class AddLatitudeToAquaria < ActiveRecord::Migration[5.2]
  def change
    add_column :aquaria, :Latitude, :float
  end
end
