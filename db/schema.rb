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

ActiveRecord::Schema.define(version: 1) do

  create_table "authors", force: :cascade do |t|
    t.datetime "created_at",                              null: false
    t.datetime "modified_at",                             null: false
    t.string   "email",       limit: 255
    t.string   "hashed_pass", limit: 40
    t.string   "name",        limit: 100
    t.string   "url",         limit: 255
    t.boolean  "is_active",   limit: 1,   default: false
  end

  create_table "blacklist", force: :cascade do |t|
    t.string   "item",       limit: 255
    t.datetime "created_at",             null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "post_id",         limit: 4
    t.string   "name",            limit: 255
    t.string   "email",           limit: 255
    t.string   "url",             limit: 255
    t.string   "subject",         limit: 255
    t.string   "synd_title",      limit: 255
    t.text     "body",            limit: 65535
    t.text     "body_raw",        limit: 65535
    t.text     "body_searchable", limit: 65535
    t.string   "user_ip",         limit: 255
    t.datetime "created_at",                                    null: false
    t.datetime "modified_at",                                   null: false
    t.string   "user_agent",      limit: 255
    t.string   "referrer",        limit: 255
    t.boolean  "approved",        limit: 1,     default: false, null: false
  end

  create_table "pages", force: :cascade do |t|
    t.string   "permalink",   limit: 128
    t.text     "body_raw",    limit: 65535
    t.text     "body",        limit: 65535
    t.boolean  "is_active",   limit: 1,     default: true
    t.datetime "created_at"
    t.datetime "modified_at"
    t.string   "text_filter", limit: 255
    t.string   "title",       limit: 128
  end

  create_table "posts", force: :cascade do |t|
    t.integer  "author_id",           limit: 4,     default: 0,    null: false
    t.datetime "created_at",                                       null: false
    t.datetime "modified_at",                                      null: false
    t.string   "permalink",           limit: 128
    t.string   "title",               limit: 255
    t.string   "synd_title",          limit: 255
    t.text     "summary",             limit: 65535
    t.text     "body_raw",            limit: 65535
    t.text     "extended_raw",        limit: 65535
    t.text     "body",                limit: 65535
    t.text     "extended",            limit: 65535
    t.boolean  "is_active",           limit: 1,     default: true
    t.string   "custom_field_1",      limit: 255
    t.string   "custom_field_2",      limit: 255
    t.string   "custom_field_3",      limit: 255
    t.text     "body_searchable",     limit: 65535
    t.text     "extended_searchable", limit: 65535
    t.string   "text_filter",         limit: 255
    t.integer  "comment_status",      limit: 4,     default: 0
  end

  create_table "preferences", force: :cascade do |t|
    t.string "nice_name",   limit: 255,   null: false
    t.text   "description", limit: 65535, null: false
    t.string "name",        limit: 255,   null: false
    t.string "value",       limit: 255,   null: false
  end

  create_table "schema_info", id: false, force: :cascade do |t|
    t.integer "version", limit: 4
  end

  create_table "sessions", force: :cascade do |t|
    t.string   "session_id", limit: 255
    t.text     "data",       limit: 65535
    t.datetime "updated_at"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name", limit: 128
  end

  create_table "tags_posts", id: false, force: :cascade do |t|
    t.integer "tag_id",  limit: 4
    t.integer "post_id", limit: 4
  end

  create_table "updates", force: :cascade do |t|
    t.datetime "last_checked_at"
    t.boolean  "update_available", limit: 1,   default: false
    t.string   "update_version",   limit: 255
  end

end
