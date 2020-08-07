class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.integer :user_id
      t.integer :spot_id
      t.float :rate
      t.integer :size
      t.string :report_image_id
      t.text :review
      t.string :board
      t.time :time
      t.float :wind
      t.float :temperature
      t.float :water_temperature

      t.timestamps
    end
  end
end
