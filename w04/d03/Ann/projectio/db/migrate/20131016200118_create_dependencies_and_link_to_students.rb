class CreateDependenciesAndLinkToStudents < ActiveRecord::Migration
  def up
    create_table :dependencies_and_link_to_students do |t|
      t.string :name, null: false 
      t.string :type, null: false 
      t.boolean :is_gem, null:false 
      t.string :documentation_link 
      t.string :other_link 
    end

    #adding a foreign key 
    add_reference :students, :dependencies 


    def down 
      remove_column :students, :dependencies_id 
      drop table :dependencies 
    end 

  end
end
