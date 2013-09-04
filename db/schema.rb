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

ActiveRecord::Schema.define(version: 20130829004221) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "stop_times", force: true do |t|
    t.integer  "trip_id"
    t.integer  "arrival_time"
    t.integer  "departure_time"
    t.integer  "stop_id"
    t.integer  "stop_sequence"
    t.integer  "pickup_type"
    t.integer  "drop_off_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stops", force: true do |t|
    t.integer  "stop_code"
    t.string   "stop_name"
    t.string   "stop_desc"
    t.decimal  "stop_lat",              precision: 7, scale: 4
    t.decimal  "stop_lon",              precision: 7, scale: 4
    t.integer  "zone_id"
    t.string   "stop_url"
    t.integer  "parent_station"
    t.integer  "location_type"
    t.integer  "wheelchair_accessible"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trips", force: true do |t|
    t.integer  "route_id"
    t.integer  "service_id"
    t.integer  "trip_id"
    t.string   "trip_headsign"
    t.integer  "trip_short_name"
    t.integer  "direction_id"
    t.integer  "block_id"
    t.integer  "shape_id"
    t.integer  "wheelchair_boarding"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
