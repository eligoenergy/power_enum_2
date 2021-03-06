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

ActiveRecord::Schema.define(version: 20120909235526) do

  create_table "adapters", force: true do |t|
    t.integer  "connector_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "booking_statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bookings", force: true do |t|
    t.integer  "status_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "state_id"
  end

  create_table "colors", force: true do |t|
    t.string "name", null: false
  end

  add_index "colors", ["name"], name: "index_colors_on_name", unique: true

  create_table "connector_types", force: true do |t|
    t.string   "name",        limit: 50,                null: false
    t.string   "description"
    t.boolean  "active",                 default: true, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "has_sound",                             null: false
  end

  add_index "connector_types", ["name"], name: "index_connector_types_on_name", unique: true

  create_table "fruits", force: true do |t|
    t.string "fruit_name",  null: false
    t.string "description"
  end

  add_index "fruits", ["fruit_name"], name: "index_fruits_on_fruit_name", unique: true

  create_table "states", force: true do |t|
    t.string   "state_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "virtual_enums", force: true do |t|
    t.string "name", null: false
  end

  add_index "virtual_enums", ["name"], name: "index_virtual_enums_on_name", unique: true

  create_table "widgets", force: true do |t|
    t.integer  "connector_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
