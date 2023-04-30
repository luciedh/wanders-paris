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

ActiveRecord::Schema[7.0].define(version: 2023_04_09_175444) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favourite_places", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "place_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["place_id"], name: "index_favourite_places_on_place_id"
    t.index ["user_id"], name: "index_favourite_places_on_user_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "address"
    t.string "img_url"
    t.string "audio_url"
    t.bigint "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "post_code"
    t.float "geo_lat"
    t.float "geo_long"
    t.index ["category_id"], name: "index_places_on_category_id"
  end

  create_table "trip_places", force: :cascade do |t|
    t.bigint "trip_id", null: false
    t.bigint "place_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["place_id"], name: "index_trip_places_on_place_id"
    t.index ["trip_id"], name: "index_trip_places_on_trip_id"
  end

  create_table "trips", force: :cascade do |t|
    t.string "title"
    t.bigint "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_trips_on_category_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "favourite_places", "places"
  add_foreign_key "favourite_places", "users"
  add_foreign_key "places", "categories"
  add_foreign_key "trip_places", "places"
  add_foreign_key "trip_places", "trips"
  add_foreign_key "trips", "categories"
end
