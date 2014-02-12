class CreateChefDishes < ActiveRecord::Migration
  def change
    create_table :chefs_dishes do |t|
      t.belongs_to :chef, null: false
      t.belongs_to :dish, null: false
    end

    reversible do |dir|
      dir.up do
        execute <<-SQL
ALTER TABLE chefs_dishes
ADD CONSTRAINT fk_chefs
FOREIGN KEY (chef_id)
REFERENCES chefs(id),
ADD CONSTRAINT fk_dishes
FOREIGN KEY (dish_id)
REFERENCES dishes(id)
SQL
      end
    end
  end
end