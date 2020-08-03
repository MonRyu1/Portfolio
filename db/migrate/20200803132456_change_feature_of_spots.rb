class ChangeFeatureOfSpots < ActiveRecord::Migration[5.2]
  def up
  	change_column :spots, :feature, :integer, null: false, default: 0
  end

  def down
  	change_column :spots, :feature, :integer
  end
end
