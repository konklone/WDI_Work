class CreateJudgesTable < ActiveRecord::Migration
  def change
    create_table :judges_tables do |t|
      t.string :name
    end
  end
end
