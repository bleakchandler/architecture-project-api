# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_29_154623) do

  create_table "itineraries", force: :cascade do |t|
    t.date "date"
    t.string "description"
    t.string "name"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_itineraries_on_user_id"
  end

  create_table "itinerary_sites", force: :cascade do |t|
    t.string "name"
    t.integer "site_id", null: false
    t.integer "itinerary_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["itinerary_id"], name: "index_itinerary_sites_on_itinerary_id"
    t.index ["site_id"], name: "index_itinerary_sites_on_site_id"
  end

  create_table "sites", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "location"
    t.string "architectural_style"
    t.string "photo_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "itineraries", "users"
  add_foreign_key "itinerary_sites", "itineraries"
  add_foreign_key "itinerary_sites", "sites"
end
