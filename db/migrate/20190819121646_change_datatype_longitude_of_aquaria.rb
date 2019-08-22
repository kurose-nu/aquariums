class ChangeDatatypeLongitudeOfAquaria < ActiveRecord::Migration[5.2]
  def change
    change_column :aquaria, :longitude, :float
  end
end
