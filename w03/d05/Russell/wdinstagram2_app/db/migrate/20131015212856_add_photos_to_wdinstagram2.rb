class AddPhotosToWdinstagram2 < ActiveRecord::Migration
  def up
  	create_table :photos do |t|
 	 t.string :author 
 	 t.string :photo_url
 	 t.date :date_taken
  end
end
  def down
  	drop_table :photos
	end

end

