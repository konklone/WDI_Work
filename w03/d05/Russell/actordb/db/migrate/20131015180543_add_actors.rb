class AddActors < ActiveRecord::Migration
  def up
  	create_table :actors do |t|
  		#define columns by defining the data type and then passing in the string
  		t.string :name
  		t.text :photo_url
  end
end

	def down
		drop_table :actors
	end
end

