class CreateSongs < ActiveRecord::Migration

 def up
    create_table :songs do |t|
      t.string :song_title
      t.text :embed_url
    end


  end

  def down
    drop_table :songs
    end
end
