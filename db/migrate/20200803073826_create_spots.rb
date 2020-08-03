class CreateSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :spots do |t|
      t.integer :area_id
      t.string :name
      t.string :spot_image_id
      t.string :address
      t.integer :feature
      t.integer :parking

      t.timestamps
    end
  end
end
