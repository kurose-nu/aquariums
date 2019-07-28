class RenameAquariumsToAquaria < ActiveRecord::Migration[5.2]
  def change
    rename_table :aquariums, :aquaria
  end
end
