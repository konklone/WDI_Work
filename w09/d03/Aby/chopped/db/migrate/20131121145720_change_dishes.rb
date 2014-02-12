class ChangeDishes < ActiveRecord::Migration
  def change
    change_table :dishes do |t|
      t.references :chef, null: false, index: true
      
      t.integer :round
      t.integer :score
    end
    
    reversible do |dir|
      dir.up do
        execute <<-SQL
ALTER TABLE dishes
ADD CONSTRAINT fk_dishes_chefs
FOREIGN KEY (chef_id)
REFERENCES chefs(id)
SQL
      end
    end
  end
end