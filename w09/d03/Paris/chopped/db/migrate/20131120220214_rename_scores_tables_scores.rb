class RenameScoresTablesScores < ActiveRecord::Migration
    def change
        rename_table :scores_tables, :scores
    end 
end
