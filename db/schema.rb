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

ActiveRecord::Schema.define(version: 20150112032846) do

  create_table "people", force: :cascade do |t|
    t.string   "group"
    t.string   "name"
    t.text     "person_notes"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "project_name"
    t.string   "product_line"
    t.string   "program_name"
    t.string   "project_phase"
    t.boolean  "sponsor"
    t.string   "owner"
    t.string   "proj_status"
    t.text     "proj_notes"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "task_num"
    t.string   "task_name"
    t.integer  "person_id"
    t.integer  "pct_time"
    t.date     "base_start"
    t.date     "base_finish"
    t.date     "proj_start"
    t.date     "proj_finish"
    t.integer  "task_deps"
    t.string   "task_status"
    t.text     "task_notes"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
