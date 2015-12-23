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

ActiveRecord::Schema.define(version: 20151223041925) do

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "utilities", force: :cascade do |t|
    t.string   "name"
    t.string   "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "utility_customers", force: :cascade do |t|
    t.integer  "utility_id"
    t.integer  "user_id"
    t.string   "accountNumber"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "utility_customers", ["user_id"], name: "index_utility_customers_on_user_id"
  add_index "utility_customers", ["utility_id"], name: "index_utility_customers_on_utility_id"

end
