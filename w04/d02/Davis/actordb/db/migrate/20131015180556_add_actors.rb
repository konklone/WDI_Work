class AddActors < ActiveRecord::Migration
  def up
  	# t is table
  	create_table :actors do |t|
  		# .string is varchar standard 250
  		t.string :name
  		t.text :photo_url
  		# t.date :birth_date
  	end
  end

  def down
  	drop_table :actors
  end
end
