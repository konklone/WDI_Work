class CreateChef < ActiveRecord::Migration
  def change
    create_table :chefs do |t|
      t.string :name
      t.belongs_to :episode
    end
  end
end
