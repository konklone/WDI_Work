class CreateCitizens < ActiveRecord::Migration
  def change
    create_table :citizens do |t|
      t.string :name
      t.integer :birth_year
      t.belongs_to :district
      t.string :type
      t.string :gender, limit: 1

      t.timestamps
    end
  end
end
