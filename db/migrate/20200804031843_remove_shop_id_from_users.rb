class RemoveShopIdFromUsers < ActiveRecord::Migration[5.2]
  def up
  	remove_column :users, :shop_id
  end

  def down
  	add_column :users, :shop_id, :integer
  end

end
