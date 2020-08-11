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

ActiveRecord::Schema.define(version: 20200811074509) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "samurai_contacts_contacts", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "company"
    t.string "email"
    t.string "phone"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_samurai_contacts_contacts_on_user_id"
  end

  create_table "samurai_tasks_tasks", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.bigint "user_id"
    t.bigint "contact_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_id"], name: "index_samurai_tasks_tasks_on_contact_id"
    t.index ["user_id"], name: "index_samurai_tasks_tasks_on_user_id"
  end

  create_table "samurai_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin"
    t.index ["email"], name: "index_samurai_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_samurai_users_on_reset_password_token", unique: true
  end

  add_foreign_key "samurai_contacts_contacts", "samurai_users", column: "user_id"
  add_foreign_key "samurai_tasks_tasks", "samurai_contacts_contacts", column: "contact_id"
  add_foreign_key "samurai_tasks_tasks", "samurai_users", column: "user_id"
end
