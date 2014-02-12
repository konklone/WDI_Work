class AddDobToActors < ActiveRecord::Migration
  def change
    add_column :actors, :dob, :date
  end
  def down
    remove_column :actors, :birth_date
  end
end
