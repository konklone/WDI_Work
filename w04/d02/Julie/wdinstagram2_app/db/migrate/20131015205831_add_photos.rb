class AddPhotos < ActiveRecord::Migration

  def up
    create_table :entries do |t|
    t.string :author
    t.text :photo_url
    t.string :post_date

  end
end


  def down
    drop_table :photos
  end
end