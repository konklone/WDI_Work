class CreateScoresTable < ActiveRecord::Migration
  def change
    create_table :scores_tables do |t|
      t.integer :score_value
    end
  end
end
