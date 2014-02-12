# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20131121010546) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chefs", force: true do |t|
    t.string "name"
  end

  create_table "dishes", force: true do |t|
    t.string  "name"
    t.string  "type"
    t.integer "score_id"
    t.integer "chef_id"
  end

  create_table "episodes", force: true do |t|
    t.integer  "judge_id"
    t.integer  "chef_id"
    t.integer  "dish_id"
    t.integer  "round_id"
    t.string   "winner"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "judges", force: true do |t|
    t.string "name"
  end

  create_table "rounds", force: true do |t|
    t.string  "type"
    t.integer "judge_id"
    t.integer "dish_id"
  end

  create_table "scores", force: true do |t|
    t.integer "score_value"
  end

end
