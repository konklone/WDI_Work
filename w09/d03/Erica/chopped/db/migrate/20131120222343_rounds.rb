class Rounds < ActiveRecord::Migration
  def change
    create_table :rounds do |r|
      r.string :category, null: false
      r.string :winner
      r.boolean :tie, default: false  
      r.belongs_to :episode
    end
  end
end
