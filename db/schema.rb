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

ActiveRecord::Schema.define(version: 20141012051120) do

  create_table "addresses", force: true do |t|
    t.string   "postal_code"
    t.string   "address"
    t.string   "apartment"
    t.string   "city"
    t.string   "province"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "children", force: true do |t|
    t.integer  "age"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "owner_id"
  end

  add_index "children", ["owner_id"], name: "index_children_on_owner_id", using: :btree

  create_table "comments", force: true do |t|
    t.string   "title",            limit: 50, default: ""
    t.text     "comment"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.integer  "user_id"
    t.string   "role",                        default: "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["commentable_id"], name: "index_comments_on_commentable_id", using: :btree
  add_index "comments", ["commentable_type"], name: "index_comments_on_commentable_type", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "consumables", force: true do |t|
    t.string   "description"
    t.float    "charges"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "homes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "has_pet"
    t.integer  "offering_id"
  end

  add_index "homes", ["offering_id"], name: "index_homes_on_offering_id", using: :btree

  create_table "offer_internets", force: true do |t|
    t.boolean  "has_wireless"
    t.boolean  "has_wired"
    t.boolean  "has_internet"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "home_id"
  end

  add_index "offer_internets", ["home_id"], name: "index_offer_internets_on_home_id", using: :btree

  create_table "offer_meals", force: true do |t|
    t.boolean  "has_breakfast"
    t.boolean  "has_lunch"
    t.boolean  "has_diner"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "home_id"
  end

  add_index "offer_meals", ["home_id"], name: "index_offer_meals_on_home_id", using: :btree

  create_table "offer_smokes", force: true do |t|
    t.boolean  "permit_smoking_inside"
    t.boolean  "permite_smoking_outside"
    t.boolean  "no_smoking"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "home_id"
  end

  add_index "offer_smokes", ["home_id"], name: "index_offer_smokes_on_home_id", using: :btree

  create_table "offerings", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "active"
    t.integer  "owner_id"
  end

  add_index "offerings", ["owner_id"], name: "index_offerings_on_owner_id", using: :btree

  create_table "owners", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "primary_language"
  end

  create_table "rooms", force: true do |t|
    t.integer  "room_rate"
    t.date     "availability"
    t.boolean  "has_desk"
    t.string   "bed_size"
    t.string   "floor"
    t.string   "entrance"
    t.string   "bathroom_access"
    t.string   "internet_access"
    t.string   "television_avaibility"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "home_id"
  end

  add_index "rooms", ["home_id"], name: "index_rooms_on_home_id", using: :btree

end
