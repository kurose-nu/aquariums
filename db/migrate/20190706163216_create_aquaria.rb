class CreateAquaria < ActiveRecord::Migration[5.2]
  def change
    create_table :aquaria do |t|
      t.string :facility
      t.float :value
      t.string :content
      t.string :image
      t.string :address
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
