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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111222163831) do

  create_table "batches", :force => true do |t|
    t.string   "name"
    t.integer  "recipe_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ingredients", :force => true do |t|
    t.string   "name"
    t.float    "qty"
    t.string   "units"
    t.integer  "batch_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "instructions", :force => true do |t|
    t.text     "step"
    t.integer  "batch_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipes", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
