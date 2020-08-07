class ChangeSizeOfForecasts < ActiveRecord::Migration[5.2]
  def up
  	change_column :forecasts, :size, :integer, null: false, default: 0
  end

  def down
  	change_column :forecasts, :size, :integer
  end
end
