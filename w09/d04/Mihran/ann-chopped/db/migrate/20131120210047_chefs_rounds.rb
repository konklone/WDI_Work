class ChefsRounds < ActiveRecord::Migration
  def change
    create_table :chefs_rounds do |t|
      t.belongs_to :chef
      t.belongs_to :round 
  end
end
end 
