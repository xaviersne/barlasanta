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

ActiveRecord::Schema.define(version: 2022_03_21_223111) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "appointments", force: :cascade do |t|
    t.date "date"
    t.time "time"
    t.integer "people"
    t.bigint "client_devise_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_devise_id"], name: "index_appointments_on_client_devise_id"
  end

  create_table "client_devises", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role", default: 0
    t.index ["email"], name: "index_client_devises_on_email", unique: true
    t.index ["reset_password_token"], name: "index_client_devises_on_reset_password_token", unique: true
  end

  create_table "pruebas", force: :cascade do |t|
    t.date "date"
    t.time "time"
    t.integer "people"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reserve_rooms", force: :cascade do |t|
    t.integer "people"
    t.date "date"
    t.time "time"
    t.text "observations"
    t.integer "status"
    t.bigint "client_devise_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_devise_id"], name: "index_reserve_rooms_on_client_devise_id"
  end

  create_table "reserve_tables", force: :cascade do |t|
    t.integer "people"
    t.date "date"
    t.time "time"
    t.text "observations"
    t.integer "status"
    t.bigint "client_devise_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_devise_id"], name: "index_reserve_tables_on_client_devise_id"
  end

  create_table "reserves", force: :cascade do |t|
    t.date "date"
    t.time "time"
    t.integer "people"
    t.bigint "client_devise_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_devise_id"], name: "index_reserves_on_client_devise_id"
  end

  add_foreign_key "appointments", "client_devises"
  add_foreign_key "reserve_rooms", "client_devises"
  add_foreign_key "reserve_tables", "client_devises"
  add_foreign_key "reserves", "client_devises"
end
