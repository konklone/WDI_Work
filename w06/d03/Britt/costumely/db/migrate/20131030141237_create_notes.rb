class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :note, null: false
      t.date :date, null: false
      t.references :costume

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        execute <<-SQL
          ALTER TABLE notes
            ADD CONSTRAINT fk_costumes_notes
            FOREIGN KEY (costume_id)
            REFERENCES costumes(id)
        SQL
      end
    end
  end
end
