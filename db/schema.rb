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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120614235436) do

  create_table "fields", :force => true do |t|
    t.integer  "task_type_id"
    t.string   "name"
    t.string   "kind"
    t.string   "options"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "task_types", :force => true do |t|
    t.string   "name"
    t.text     "display_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", :force => true do |t|
    t.string   "title"
    t.datetime "due_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "task_type_id"
    t.text     "description"
  end

  create_table "values", :force => true do |t|
    t.integer  "task_id"
    t.integer  "field_id"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
