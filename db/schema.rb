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

ActiveRecord::Schema.define(version: 2020_08_04_031843) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "areas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "forecasts", force: :cascade do |t|
    t.integer "user_id"
    t.integer "spot_id"
    t.float "rate"
    t.integer "size", default: 0, null: false
    t.string "date"
    t.text "review"
    t.time "sunrise"
    t.time "sunset"
    t.float "wind"
    t.float "temperature"
    t.float "water_temperature"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locals", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.string "user_name"
    t.string "local_image_id"
    t.integer "level"
    t.boolean "is_active", default: true, null: false
    t.integer "shop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_locals_on_email", unique: true
    t.index ["reset_password_token"], name: "index_locals_on_reset_password_token", unique: true
  end

  create_table "reports", force: :cascade do |t|
    t.integer "user_id"
    t.integer "spot_id"
    t.float "rate"
    t.integer "size", default: 0, null: false
    t.string "report_image_id"
    t.text "review"
    t.string "board"
    t.time "time"
    t.float "wind"
    t.float "temperature"
    t.float "water_temperature"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shops", force: :cascade do |t|
    t.integer "area_id"
    t.string "name"
    t.string "address"
    t.string "phone_number"
    t.string "email"
    t.string "shop_image_id"
    t.text "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spots", force: :cascade do |t|
    t.integer "area_id"
    t.string "name"
    t.string "spot_image_id"
    t.string "address"
    t.integer "feature", default: 0, null: false
    t.integer "parking", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.string "user_name"
    t.string "user_image_id"
    t.integer "level", default: 0, null: false
    t.boolean "is_active", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
