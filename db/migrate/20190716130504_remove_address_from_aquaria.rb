class RemoveAddressFromAquaria < ActiveRecord::Migration[5.2]
  def change
    remove_column :aquaria, :address, :string
  end
end
