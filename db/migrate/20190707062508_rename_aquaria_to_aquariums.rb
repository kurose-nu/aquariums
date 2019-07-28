class RenameAquariaToAquariums < ActiveRecord::Migration[5.2]
  def change
    rename_table :aquaria, :aquariums
  end
end
