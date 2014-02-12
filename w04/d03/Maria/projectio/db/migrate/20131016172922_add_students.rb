class AddStudents < ActiveRecord::Migration
  def up
    create_table :students do |t|
      t.string :name # string is only 255 characters, varchar(255)
      t.text :project_description # larger amount of text data
      t.string :github_link
    end
  end

  def down
    drop_table :students
  end
end