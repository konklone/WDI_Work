class AddBirthDateToActors < ActiveRecord::Migration
  def change
    add_column :actors, :birth_date, :date 
  end

  def down 
    remove_column :actors, :birth_date
  end 
end
