class AddBirthDateToActors < ActiveRecord::Migration

  def up
    # tablename, column name, data type:
    add_column :actors, :birth_date, :date
  end

  def down
    remove_column :actors, :birth_date
  end
  
end
