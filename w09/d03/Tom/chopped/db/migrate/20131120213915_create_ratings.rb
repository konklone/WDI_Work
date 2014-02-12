class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :score
      t.references :dish, index: true
      t.references :judge, index: true

      t.timestamps
    end
  end
end
