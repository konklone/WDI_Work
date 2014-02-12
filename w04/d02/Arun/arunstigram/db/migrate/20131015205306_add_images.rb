class AddImages < ActiveRecord::Migration
	def up
		create_table :images do |t|
			t.string :author
			t.text :photo_url
			t.string :date
		end

	end

	def down
		drop_table :images
	end
end
