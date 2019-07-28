class AddLatiLongtudeToAquaria < ActiveRecord::Migration[5.2]
  def change
    add_column :aquaria, :latitude, :float
    add_column :aquaria, :longitude, :string
  end
end
