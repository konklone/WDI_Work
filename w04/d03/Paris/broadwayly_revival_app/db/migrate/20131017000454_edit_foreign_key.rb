class EditForeignKey < ActiveRecord::Migration
 
 def up
    create_table :songs do |t|
      t.string :song_title
      t.text :embed_url
    end

    add_reference :songs, :show
  end

  def down
    drop_table :songs
    end
end