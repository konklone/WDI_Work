class AddTimestampssToStudents < ActiveRecord::Migration
  def self.up
  	change_table :students do |t|
  		t.timestamps
  	end
  end

  def self.down
  	remove_column :students, :created_at
  	remove_column :students, :updated_at
  end
end
