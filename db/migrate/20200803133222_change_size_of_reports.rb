class ChangeSizeOfReports < ActiveRecord::Migration[5.2]
  def up
  	change_column :reports, :size, :integer, null: false, default: 0
  end

  def down
  	change_column :reports, :size, :integer
  end
end
