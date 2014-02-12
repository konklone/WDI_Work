class RenameJudgesTablesJudges < ActiveRecord::Migration
    def change
        rename_table :judges_tables, :judges
    end 
end
