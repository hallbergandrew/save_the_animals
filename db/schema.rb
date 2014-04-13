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

ActiveRecord::Schema.define(version: 20140413010213) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animals", force: true do |t|
    t.string "name"
  end

  create_table "breeds", force: true do |t|
    t.string  "name"
    t.integer "animal_id"
  end

  create_table "cities", force: true do |t|
    t.string  "name"
    t.integer "state_id"
  end

  create_table "countries", force: true do |t|
    t.string "name"
  end

  create_table "documents", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.datetime "attachment_updated_at"
  end

  add_index "documents", ["user_id"], name: "index_documents_on_user_id", using: :btree

  create_table "mix_breeds", force: true do |t|
    t.integer "breed_id"
    t.integer "profile_id"
  end

  create_table "profiles", force: true do |t|
    t.string  "name"
    t.string  "gender"
    t.integer "age"
    t.float   "weight"
    t.text    "description"
    t.string  "picture"
    t.integer "animal_id"
    t.integer "user_id"
    t.integer "document_id"
  end

  create_table "states", force: true do |t|
    t.string  "name"
    t.integer "country_id"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "document_id"
    t.string   "password_digest"
  end

end
