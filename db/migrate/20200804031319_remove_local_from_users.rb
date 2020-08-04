class RemoveLocalFromUsers < ActiveRecord::Migration[5.2]
  def up
  	remove_column :users, :local
  end

  def down
  	add_column :users, :local, :boolean, default: true, null: false
  end

end
