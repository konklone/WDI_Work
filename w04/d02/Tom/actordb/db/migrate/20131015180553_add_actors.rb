class AddActors < ActiveRecord::Migration
  def up
    # t represents a table each t below repsresents a column
    # primary key is automatically generated
    create_table :actors do |t|
      t.string :name # t.string is equivalent to varchar
      t.text :photo_url
      # others t.integer, t.boolean, t .date
    end
  end

  def down
    drop_table :actors
  end
end
