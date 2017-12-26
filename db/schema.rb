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

ActiveRecord::Schema.define(version: 20171226034701) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "earthquakes", force: :cascade do |t|
    t.datetime "time"
    t.float "latitude"
    t.float "longitude"
    t.decimal "depth"
    t.decimal "mag"
    t.string "magType"
    t.integer "nst"
    t.decimal "gap"
    t.decimal "dmin"
    t.decimal "rms"
    t.string "networkCode"
    t.string "quakeId"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.float "latitude"
    t.float "longitude"
    t.datetime "time"
    t.decimal "mag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
  end

  create_table "quakelocations", force: :cascade do |t|
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.datetime "time"
    t.decimal "mag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recordingstations", force: :cascade do |t|
    t.string "quakeId"
    t.date "updated"
    t.string "place"
    t.string "quaketype"
    t.decimal "horizontalError"
    t.decimal "depthError"
    t.decimal "magError"
    t.integer "magNst"
    t.string "status"
    t.string "locationSource"
    t.string "stationCode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stations", force: :cascade do |t|
    t.string "quakeId"
    t.datetime "updated"
    t.string "place"
    t.string "type"
    t.decimal "horizontalError"
    t.decimal "depthError"
    t.decimal "magError"
    t.integer "magNst"
    t.string "status"
    t.string "locationSource"
    t.string "stationCode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
