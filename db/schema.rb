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

ActiveRecord::Schema.define(version: 20160112143022) do

  create_table "bugs", force: :cascade do |t|
    t.integer  "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "bugs", ["project_id"], name: "index_bugs_on_project_id"

  create_table "chores", force: :cascade do |t|
    t.integer  "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "chores", ["project_id"], name: "index_chores_on_project_id"

  create_table "epics", force: :cascade do |t|
    t.string   "name"
    t.integer  "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "epics", ["project_id"], name: "index_epics_on_project_id"

  create_table "features", force: :cascade do |t|
    t.decimal  "estimation"
    t.integer  "epic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "features", ["epic_id"], name: "index_features_on_epic_id"

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.float    "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string   "name"
    t.boolean  "done"
    t.integer  "feature_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tasks", ["feature_id"], name: "index_tasks_on_feature_id"

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ticket_assignments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "ticket_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "ticket_assignments", ["ticket_id"], name: "index_ticket_assignments_on_ticket_id"
  add_index "ticket_assignments", ["user_id"], name: "index_ticket_assignments_on_user_id"

  create_table "tickets", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "state_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "tickets", ["state_id"], name: "index_tickets_on_state_id"

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
