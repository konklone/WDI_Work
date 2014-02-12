class FixThatBus < ActiveRecord::Migration
  def up
    # we should NOT! have put the foreign key into the students table...
    remove_column :students, :dependencies_id

    # we SHOULD! have put the foreign key (ie the reference) into the dependencies table...
    add_reference :dependencies, :student
  end

  def down
    # what is below is for realz only a problem (since it refers to a major mistake)
    # please don't try to learn by looking at it...
    remove_column :dependencies, :student_id
    add_reference :students, :dependencies
  end
end
