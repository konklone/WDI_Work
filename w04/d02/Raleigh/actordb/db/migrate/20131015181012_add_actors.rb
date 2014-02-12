class AddActors < ActiveRecord::Migration
   def up
      create_table :actors do |t|
         # Primary Key is automatically generated
         t.string :name
         t.text :photo_url
      end
   end

   def down
      drop_table :actors
   end
  
end
