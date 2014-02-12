class AddEntries < ActiveRecord::Migration
  def up
    create_table :entries do |x|
      x.string :author
      x.text :photo_url
      x.date :date_taken
  end

  def down 
    drop_table :entries
  end
  end
end

