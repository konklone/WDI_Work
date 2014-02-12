class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.references :episodes, null: false, index: true

      t.timestamps
    end
  end
end
