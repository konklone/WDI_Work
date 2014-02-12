class RenameEpisodesTablesEpisodeTable < ActiveRecord::Migration
    def change
        rename_table :episodes_tables, :episodes
    end 
end

