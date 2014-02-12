class CreateChefsTable < ActiveRecord::Migration
  def change
    create_table :chefs_tables do |t|
      t.string :name
    end
  end
end
