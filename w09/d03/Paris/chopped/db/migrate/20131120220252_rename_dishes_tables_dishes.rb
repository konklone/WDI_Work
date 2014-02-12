class RenameDishesTablesDishes < ActiveRecord::Migration
    def change
        rename_table :dishes_tables, :dishes
    end 
end
