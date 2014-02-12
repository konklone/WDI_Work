class AddForiegnKeyToNotes < ActiveRecord::Migration
  def up
    execute <<-SQL
      ALTER TABLE notes 
      ADD COLUMN costume_id INT;


      ALTER TABLE notes
        ADD CONSTRAINT fk_notes_costumes
        FOREIGN KEY (costume_id)
        REFERENCES costumes(id);
    SQL
  end

  def down
    execute <<-SQL  
  
      ALTER TABLE notes
      DROP FOREIGN KEY fk_notes_costumes;
  
      ALTER TABLE notes
      DROP COLUMN costume_id;
      
    SQL
  end

end
