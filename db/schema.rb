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

ActiveRecord::Schema.define(version: 2020_01_23_175646) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "climbs", force: :cascade do |t|
    t.text "description"
    t.string "avi"
    t.string "approach"
    t.string "grade"
    t.string "region"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "status", default: "Status Unknown"
  end

  create_table "favorites", force: :cascade do |t|
    t.bigint "climb_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["climb_id"], name: "index_favorites_on_climb_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "trip_reports", force: :cascade do |t|
    t.date "date"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "climb_id"
    t.bigint "user_id"
    t.string "photo"
    t.string "status"
    t.index ["climb_id"], name: "index_trip_reports_on_climb_id"
    t.index ["user_id"], name: "index_trip_reports_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.bigint "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object"
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
  end

  add_foreign_key "favorites", "climbs"
  add_foreign_key "favorites", "users"
  add_foreign_key "trip_reports", "climbs"
  add_foreign_key "trip_reports", "users"
end
