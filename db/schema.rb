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

ActiveRecord::Schema.define(version: 20131121134216) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: true do |t|
    t.string   "name",       null: false
    t.float    "latitude",   null: false
    t.float    "longitude",  null: false
    t.integer  "country_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "froms", force: true do |t|
    t.integer  "city_id"
    t.string   "ticket_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tickets", force: true do |t|
    t.integer  "number",           null: false
    t.date     "date",             null: false
    t.time     "time",             null: false
    t.time     "duration",         null: false
    t.integer  "company_id",       null: false
    t.integer  "transport_way_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "price"
  end

  create_table "tos", force: true do |t|
    t.integer  "city_id"
    t.string   "ticket_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transport_ways", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
