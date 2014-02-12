class CreateChefs < ActiveRecord::Migration
  def change
    create_table :chefs do |t|
      t.string :name, null: false
      t.references :episodes, null: false, index: true

      t.timestamps
    end    
  end
end
