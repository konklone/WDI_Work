class CreateMovie < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :poster
      t.string :plot
      t.boolean :seen, default: false
      t.integer :rating

      t.timestamps
    end
  end
end
