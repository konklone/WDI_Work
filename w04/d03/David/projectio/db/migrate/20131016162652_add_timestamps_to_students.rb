class AddTimestampsToStudents < ActiveRecord::Migration
   def up 
        change_table :students do |t|
            t.timestamps
        end
    end
    def down 
        remove_column :students, :created_at
        remove_column :students, :updated_at
    end
end
