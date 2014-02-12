class AddBirthDateToActors < ActiveRecord::Migration
  def up
  	add_column :actors, :birth_day, :date
  end

  def down 
  	remove_column :actors, :birth_date
  end
end
