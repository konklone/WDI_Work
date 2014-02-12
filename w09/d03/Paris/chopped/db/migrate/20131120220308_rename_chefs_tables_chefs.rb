class RenameChefsTablesChefs < ActiveRecord::Migration
    def change
        rename_table :chefs_tables, :chefs
    end 
end
