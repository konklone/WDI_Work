class CreateJudges < ActiveRecord::Migration
  def change
    create_table :judges do |t|
      t.string :name, null: false 
    end
  end
end
