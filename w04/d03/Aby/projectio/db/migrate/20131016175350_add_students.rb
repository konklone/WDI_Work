class AddStudents < ActiveRecord::Migration
  
  def up
  	create_table :students do |t|
  		t.string :name
  		t.text :project_description
  end
  
  def down
  	drop_table :students 
  end

  def create
  end
end

end
