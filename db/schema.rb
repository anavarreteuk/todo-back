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

ActiveRecord::Schema.define(version: 2018_12_05_124643) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "add_optional_to_tasks", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.bigint "user_id"
    t.string "title"
    t.string "instruction"
    t.string "beforeImage"
    t.string "afterImage"
    t.string "location"
    t.string "occurance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "date"
    t.string "time"
    t.string "progress"
    t.boolean "started"
    t.boolean "finished"
    t.boolean "is_active", default: true
    t.index ["user_id"], name: "index_tasks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_active", default: true
    t.string "email"
    t.string "firstname"
    t.string "lastname"
    t.string "city"
    t.string "country"
    t.string "password_digest"
  end

  add_foreign_key "tasks", "users"
end
