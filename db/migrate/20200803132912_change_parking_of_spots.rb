class ChangeParkingOfSpots < ActiveRecord::Migration[5.2]
  def up
  	change_column :spots, :parking, :integer, null: false, default: 0
  end

  def down
  	change_column :spots, :parking, :integer
  end
end
