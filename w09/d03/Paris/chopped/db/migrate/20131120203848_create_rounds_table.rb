class CreateRoundsTable < ActiveRecord::Migration
  def change
    create_table :rounds_tables do |t|
      t.string :type
      t.integer :judge_id
      t.integer :dish_id
    end
  end
end
