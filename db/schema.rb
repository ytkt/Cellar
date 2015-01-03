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

ActiveRecord::Schema.define(version: 20150103154702) do

  create_table "brand_grapes", force: :cascade do |t|
    t.integer  "percentage"
    t.integer  "brand_id"
    t.integer  "grape_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "brand_grapes", ["brand_id"], name: "index_brand_grapes_on_brand_id"
  add_index "brand_grapes", ["grape_id"], name: "index_brand_grapes_on_grape_id"

  create_table "brands", force: :cascade do |t|
    t.string   "name",                null: false
    t.integer  "vintage",             null: false
    t.integer  "asin"
    t.integer  "jan_code"
    t.integer  "temperature_low"
    t.integer  "temperature_high"
    t.integer  "serving_temperature"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "country_id"
    t.integer  "region_id"
    t.integer  "producer_id"
    t.integer  "glass"
  end

  add_index "brands", ["country_id"], name: "index_brands_on_country_id"
  add_index "brands", ["producer_id"], name: "index_brands_on_producer_id"
  add_index "brands", ["region_id"], name: "index_brands_on_region_id"

  create_table "countries", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grapes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "producers", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "country_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "regions", ["country_id"], name: "index_regions_on_country_id"

end
