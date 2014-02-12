class CreateCostumes < ActiveRecord::Migration
  def change
    create_table :costumes do |t|
    	t.string :name, null: false
    	t.string :image, null: false
    end
  end
end
