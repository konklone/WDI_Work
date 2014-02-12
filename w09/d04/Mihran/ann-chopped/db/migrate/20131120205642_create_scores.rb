class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.belongs_to :dish 
      t.belongs_to :judge 
      t.integer :ranking, null: false  
    end
  end
end
