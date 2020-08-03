class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.integer :area_id
      t.string :name
      t.string :address
      t.string :phone_number
      t.string :email
      t.string :shop_image_id
      t.text :about

      t.timestamps
    end
  end
end
