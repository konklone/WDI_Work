class AddEntries < ActiveRecord::Migration
  def up
    create_table :entries do |entry|
      entry.string :author
      entry.date :date
      entry.text :image
    end
  end
  def down
    drop_table :entries
  end
end
