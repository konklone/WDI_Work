class AddPosts < ActiveRecord::Migration
 
  def up
  	create_table :posts do |t|
  		t.string :author
  		t.text :photo_url
  		t.string :date_taken
  	end
  end

  def down
  	drop_table :posts
  end

end