class AddWdinstagram2App < ActiveRecord::Migration
  def up
  	create_table :entries do |t|
  		t.string :name
  		t.text :photo_url
  		t.date :date_taken
  	end
  end

  def down
  	drop_table :entries
  end
end
