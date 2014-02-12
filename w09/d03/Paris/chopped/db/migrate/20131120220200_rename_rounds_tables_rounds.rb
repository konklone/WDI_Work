class RenameRoundsTablesRounds < ActiveRecord::Migration
    def change
        rename_table :rounds_tables, :rounds
    end 
end
