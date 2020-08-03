class CreateForecasts < ActiveRecord::Migration[5.2]
  def change
    create_table :forecasts do |t|
      t.integer :user_id
      t.integer :spot_id
      t.float :rate
      t.integer :size
      t.string :date
      t.text :review
      t.time :sunrise
      t.time :sunset
      t.float :wind
      t.float :temperature
      t.float :water_temperature

      t.timestamps
    end
  end
end
