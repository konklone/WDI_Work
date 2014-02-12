class CreateTableCostume < ActiveRecord::Migration
    def up
    create_table :costumes do |t|
      t.string :name
      t.text :photo_url
    end
  end

  def down
    drop_table :costumes
    end

end
