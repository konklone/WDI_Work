class CreateShows < ActiveRecord::Migration

 def up
    create_table :shows do |t|
      t.string :title
      t.text :year
      t.text :composer
      t.text :img_url
    end
  end

  def down
    drop_table :shows
    end



end
