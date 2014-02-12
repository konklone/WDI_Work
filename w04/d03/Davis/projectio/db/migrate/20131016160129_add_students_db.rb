class AddStudentsDb < ActiveRecord::Migration
  def up
  	create_table :students do |t|
  		t.string :name
  		t.text :project_description
  		t.text :github_link
  	end
  end

  def down
  	drop_table :students
  end
end
