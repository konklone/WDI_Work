class AddEntry < ActiveRecord::Migration
  def up
    create_table :entries do |t|
      t.string :author
      t.string :photo_url
      t.date :date_taken
    end
  end    
  def down
    drop_table :entries
  end
end