class ChangeUserIdToLocalIdAtForecasts < ActiveRecord::Migration[5.2]
  def up
  	add_column :forecasts, :local_id, :integer
  end

  def down
  	remove_column :forecasts, :user_id, :integer
  end
end
