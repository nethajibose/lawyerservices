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

ActiveRecord::Schema.define(version: 20141114192045) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: true do |t|
    t.string "name"
  end

  create_table "lawyer_services", force: true do |t|
    t.string   "code"
    t.string   "service_name"
    t.string   "amount"
    t.integer  "lawyer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lawyers", force: true do |t|
    t.string   "name"
    t.integer  "experience"
    t.integer  "city_id"
    t.decimal  "rating",     precision: 3, scale: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
