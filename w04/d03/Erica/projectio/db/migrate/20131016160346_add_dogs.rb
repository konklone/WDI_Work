class AddDogs < ActiveRecord::Migration
  def up
    create_table :dogs do |t|
      t.string :name
      t.text :photo_url
      t.date :birth_date
      t.string :breed
  end

  def down 
    drop_table :dogs 
  end
end



