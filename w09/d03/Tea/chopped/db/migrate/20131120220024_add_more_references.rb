class AddMoreReferences < ActiveRecord::Migration
  def change
    add_reference :chefs, :episode
    add_reference :judges, :episode
    add_reference :dishes, :round
    add_reference :scores, :dish
    add_reference :scores, :judge
  end
end
