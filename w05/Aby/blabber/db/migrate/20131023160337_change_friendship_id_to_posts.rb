class ChangeFriendshipIdToPosts < ActiveRecord::Migration
  def change
  	rename_column :posts, :friendship_id, :user_id
  end
end
