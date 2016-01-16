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

ActiveRecord::Schema.define(version: 20151230133924) do

  create_table "customers", force: :cascade do |t|
    t.integer  "number"
    t.integer  "name"
    t.string   "product"
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "frequency"
    t.string   "cusname"
  end

  create_table "inventories", force: :cascade do |t|
    t.integer  "number"
    t.string   "location"
    t.string   "condition"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.integer  "sales"
    t.integer  "stock"
  end

  create_table "marketings", force: :cascade do |t|
    t.integer  "number"
    t.string   "name"
    t.integer  "sales"
    t.integer  "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "suggestion"
    t.integer  "avr_number"
  end

end
