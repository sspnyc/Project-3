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

ActiveRecord::Schema.define(version: 20150608055938) do

  create_table "budget_items", force: :cascade do |t|
    t.string   "item"
    t.integer  "no_of_items"
    t.float    "price_of_each"
    t.string   "photo_url"
    t.string   "contact"
    t.integer  "planner_list_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "budget_items", ["planner_list_id"], name: "index_budget_items_on_planner_list_id"

  create_table "planner_lists", force: :cascade do |t|
    t.string   "event"
    t.float    "budget"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "planner_lists", ["user_id"], name: "index_planner_lists_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "enter_username"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
