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

ActiveRecord::Schema.define(version: 20131008052216) do

  create_table "descriptions", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "status_on"
    t.text     "today_status"
    t.integer  "number_of_hours"
    t.integer  "select_project"
    t.integer  "select_task"
  end

  add_index "descriptions", ["user_id"], name: "index_descriptions_on_user_id"

  create_table "feedbacks", force: true do |t|
    t.string   "name"
    t.text     "feedback"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "project_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "project_status"
    t.text     "project_discription"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "client"
    t.text     "client_details"
  end

  create_table "tasks", force: true do |t|
    t.string   "task"
    t.date     "expected_end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "assigned_to"
    t.date     "start_date"
    t.string   "status"
    t.text     "description"
    t.integer  "select_project"
  end

  create_table "time_offs", force: true do |t|
    t.date     "date"
    t.integer  "number_of_hours"
    t.date     "from"
    t.date     "to"
    t.text     "reason"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "leave_type"
    t.string   "type"
    t.string   "status"
  end

  create_table "users", force: true do |t|
    t.string   "email",                      default: "", null: false
    t.string   "encrypted_password",         default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",              default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "reported_to"
    t.integer  "under_project"
    t.string   "profile_photo_file_name"
    t.string   "profile_photo_content_type"
    t.integer  "profile_photo_file_size"
    t.datetime "profile_photo_updated_at"
    t.string   "status"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
