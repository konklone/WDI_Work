class AddValidatesToStudents < ActiveRecord::Migration
  def up
  end

  def down 
     validates :name, :project_description, presence: false 
  end 

end
