class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title, null: false
      t.string :poster_url
      t.text :plot
      t.boolean :seen, default: false
      t.integer :rating
      t.timestamps
    end
  end
end
