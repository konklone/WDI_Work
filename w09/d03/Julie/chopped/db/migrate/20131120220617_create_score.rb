class CreateScore < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :score
      t.belongs_to :judge
      t.belongs_to :dish
    end
  end
end
