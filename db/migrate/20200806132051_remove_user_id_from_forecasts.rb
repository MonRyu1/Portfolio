class RemoveUserIdFromForecasts < ActiveRecord::Migration[5.2]
  def change
    remove_column :forecasts, :user_id, :integer
  end
end
