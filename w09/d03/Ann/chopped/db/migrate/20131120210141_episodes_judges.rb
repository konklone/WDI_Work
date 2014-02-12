class EpisodesJudges < ActiveRecord::Migration
  def change
    create_table :episodes_judges do |t|
      t.belongs_to :episode 
      t.belongs_to :judge 
  end
  end
end 
