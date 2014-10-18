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

ActiveRecord::Schema.define(version: 20141018191212) do

  create_table "addresses", force: true do |t|
    t.string   "postal_code"
    t.string   "address"
    t.string   "apartment"
    t.string   "city"
    t.string   "province"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "house_id"
  end

  add_index "addresses", ["house_id"], name: "index_addresses_on_house_id", using: :btree

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
    t.integer  "offering_id"
  end

  add_index "homes", ["offering_id"], name: "index_homes_on_offering_id", using: :btree

  create_table "houses", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "offering_id"
  end

  add_index "houses", ["offering_id"], name: "index_houses_on_offering_id", using: :btree

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

  create_table "offer_pets", force: true do |t|
    t.boolean  "has_pet"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
    t.integer  "owner_id"
    t.string   "status"
    t.string   "name"
  end

  add_index "offerings", ["owner_id"], name: "index_offerings_on_owner_id", using: :btree

  create_table "owners", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "primary_language"
    t.string   "status"
  end

  create_table "pets", force: true do |t|
    t.string   "type"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rates", force: true do |t|
    t.integer "score"
  end

  create_table "ratings", force: true do |t|
    t.integer  "user_id"
    t.integer  "rate_id"
    t.integer  "rateable_id"
    t.string   "rateable_type", limit: 32
    t.text     "free_text"
    t.string   "rater_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ratings", ["rate_id"], name: "index_ratings_on_rate_id", using: :btree
  add_index "ratings", ["rateable_id", "rateable_type"], name: "index_ratings_on_rateable_id_and_rateable_type", using: :btree

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
    t.integer  "house_id"
  end

  add_index "rooms", ["house_id"], name: "index_rooms_on_house_id", using: :btree

  create_table "students", force: true do |t|
    t.string   "country"
    t.string   "city"
    t.string   "education"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_name"
    t.string   "phone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "user_type"
    t.integer  "user_id"
  end

end
