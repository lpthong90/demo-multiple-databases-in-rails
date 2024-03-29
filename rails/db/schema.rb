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

ActiveRecord::Schema.define(version: 20221001000001) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "full_name"
    t.string   "password_digest"
    t.string   "role"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "user_balance_versions", force: :cascade do |t|
    t.bigint   "user_balance_id"
    t.jsonb    "data"
    t.decimal "balance"
    t.jsonb "reason"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["user_balance_id"], name: "index_user_balance_versions_on_user_balance_id", using: :btree
  end

  create_table "user_balances", force: :cascade do |t|
    t.bigint   "user_id"
    t.string   "coin"
    t.decimal  "balance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
