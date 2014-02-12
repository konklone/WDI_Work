class AddEntries < ActiveRecord::Migration

  def up
    create_table :entries do |t|
      t.string :author
      t.text :photo_url
      t.text :date_taken
    end
  end

  def down
    drop_table :entries
    end



end
