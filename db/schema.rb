# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130813010716) do

  create_table "estimate_units", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "to_hours"
  end

  create_table "estimates", :force => true do |t|
    t.integer  "task_id"
    t.integer  "estimate_unit_id"
    t.float    "qty"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "project_phase_id"
  end

  create_table "people", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project_phases", :force => true do |t|
    t.string   "name"
    t.string   "short_name"
    t.integer  "sequence"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.integer  "owner_id"
    t.date     "start_date"
    t.date     "end_date"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "current_phase_id"
    t.integer  "pct_complete"
    t.integer  "default_task_type_id"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "setting_types", :force => true do |t|
    t.string   "name"
    t.boolean  "set_string"
    t.boolean  "set_boolean"
    t.boolean  "set_integer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "settings", :force => true do |t|
    t.string   "name"
    t.integer  "setting_type_id"
    t.string   "string_value"
    t.boolean  "boolean_value"
    t.integer  "integer_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "task_types", :force => true do |t|
    t.string   "name"
    t.float    "complexity_factor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", :force => true do |t|
    t.string   "name"
    t.integer  "project_id"
    t.integer  "parent_task_id"
    t.boolean  "active"
    t.boolean  "complete"
    t.integer  "charge_number_id"
    t.integer  "owner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sequence"
    t.integer  "pct_complete"
    t.integer  "work_unit_id"
    t.float    "actual"
    t.integer  "task_type_id"
    t.date     "target_date"
    t.date     "due_date"
    t.date     "deadline"
  end

  create_table "work_units", :force => true do |t|
    t.string   "name"
    t.float    "hour_equivalent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
