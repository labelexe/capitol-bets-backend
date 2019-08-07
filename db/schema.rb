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

ActiveRecord::Schema.define(version: 2019_08_07_174040) do

  create_table "bets", force: :cascade do |t|
    t.integer "match_id"
    t.integer "bet_setter_id"
    t.integer "bet_taker_id"
    t.integer "money_line_odds"
    t.integer "wager_amount"
    t.integer "winner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.date "game_date"
    t.string "game_location"
    t.string "game_venue"
    t.string "game_winner"
    t.string "game_team1"
    t.string "game_team2"
    t.boolean "sport_event_status_live"
    t.boolean "sport_event_status_ended"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "email"
    t.integer "cash"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
