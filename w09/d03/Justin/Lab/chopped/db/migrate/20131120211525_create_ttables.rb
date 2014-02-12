class CreateTables < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
    	t.string :name, null: false

    	t.timestamps
    end

	create_table :chefs do |t|
    	t.string :name, null: false

    	t.timestamps
    end

    create_table :judges do |t|
    	t.string :name, null: false

    	t.timestamps
    end

    create_table :rounds do |t|
    	t.string :name, null: false

    	t.integer :episode_id
    	t.foreign_key :episodes

    	t.timestamps
    end

    create_table :episodes_chefs do |t|
    	t.integer :episode_id
    	t.foreign_key :episodes
    	t.integer :chef_id
    	t.foreign_key :chefs

    	t.timestamps
    end

    create_table :episodes_judges do |t|
    	t.integer :episode_id
    	t.foreign_key :episodes
    	t.integer :judge_id
    	t.foreign_key :judges

    	t.timestamps
    end

    create_table :dishes do |t|
    	t.string :name, null: false

    	t.integer :round_id
    	t.foreign_key :rounds
    	t.integer :chef_id
    	t.foreign_key :chefs

    	t.timestamps
    end

    create_table :votes do |t|
    	t.integer :dish_id
    	t.foreign_key :dishes
    	t.integer :judge_id
    	t.foreign_key :judges

    	t.timestamps
    end

    create_table :rounds_chefs do |t|
    	t.integer :round_id
    	t.foreign_key :rounds
    	t.integer :chef_id
    	t.foreign_key :chefs

    	t.timestamps
    end
  end
end
