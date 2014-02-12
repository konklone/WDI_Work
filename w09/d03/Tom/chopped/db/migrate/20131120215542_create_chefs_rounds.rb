class CreateChefsRounds < ActiveRecord::Migration
  def change
    create_table :chefs_rounds do |t|
      t.belongs_to :chef, null: false
      t.belongs_to :round, null: false
    end
  end
end
