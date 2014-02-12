class CreateDependenciesAndLinkToStudents < ActiveRecord::Migration
  def up
    create_table :dependencies do |t|
      t.string :name, null: false
      t.string :type, null: false #api or library
      t.boolean :is_gem, null: false
      t.string :documentation_link #documentation for that dependency
      t.string :other_link  
    end
  
  add_reference :students, :dependencies #adds reference to dependency table
  #should be :dependencies, :students
  end

  def down
    remove_column :students, :dependencies_id
    #should be :dependencies, :students_id
    drop_table :dependencies
  end
end
