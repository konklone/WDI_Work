class CreateEntries < ActiveRecord::Migration
  def up
    create_table :entries do |t|
      t.string :author
      t.text :photos
      t.date :my_date
    end
  end
  def down
    drop_table :entries
  end
end