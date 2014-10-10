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

ActiveRecord::Schema.define(version: 20140527003359) do

  create_table "addresses", force: true do |t|
    t.string   "postal_code"
    t.string   "address"
    t.string   "apartment"
    t.string   "city"
    t.string   "province"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consumables", force: true do |t|
    t.string   "description"
    t.float    "charges"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "homes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "offer_internets", force: true do |t|
    t.boolean  "has_wireless"
    t.boolean  "has_wired"
    t.boolean  "has_internet"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "offer_meals", force: true do |t|
    t.boolean  "has_breakfast"
    t.boolean  "has_lunch"
    t.boolean  "has_diner"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "offer_smokes", force: true do |t|
    t.boolean  "permit_smoking_inside"
    t.boolean  "permite_smoking_outside"
    t.boolean  "no_smoking"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "owners", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
