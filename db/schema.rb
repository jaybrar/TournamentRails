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

ActiveRecord::Schema.define(version: 20150806210707) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "participants", force: :cascade do |t|
    t.integer  "tournament_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "Player_A_id"
    t.integer  "Player_B_id"
    t.integer  "seed"
  end

  create_table "results", force: :cascade do |t|
    t.integer  "tournament_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "round"
    t.integer  "Player_1A_id"
    t.integer  "Player_1B_id"
    t.integer  "Player_2A_id"
    t.integer  "Player_2B_id"
    t.integer  "winner_A_id"
    t.integer  "winner_B_id"
    t.integer  "order"
    t.integer  "Player_1A_rating"
    t.integer  "Player_1B_rating"
    t.integer  "Player_2A_rating"
    t.integer  "Player_2B_rating"
    t.integer  "low_seed"
    t.integer  "high_seed"
    t.integer  "Player_1_score"
    t.integer  "Player_2_score"
  end

  add_index "results", ["tournament_id"], name: "index_results_on_tournament_id", using: :btree

  create_table "tournaments", force: :cascade do |t|
    t.string   "name"
    t.string   "game"
    t.boolean  "singles?"
    t.boolean  "finished"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "winner_A_id"
    t.integer  "winner_B_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.integer  "singles_total_wins"
    t.integer  "singles_total_losses"
    t.integer  "singles_total_games"
    t.integer  "singles_opponent_ratings"
    t.integer  "doubles_total_wins"
    t.integer  "doubles_total_losses"
    t.integer  "doubles_total_games"
    t.integer  "doubles_opponent_ratings"
    t.integer  "singles_rating"
    t.integer  "doubles_rating"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_foreign_key "results", "tournaments"
end
