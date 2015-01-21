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

ActiveRecord::Schema.define(version: 20150121214611) do

  create_table "comments", force: true do |t|
    t.string   "content",          null: false
    t.string   "commentable_type", null: false
    t.integer  "commentable_id",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["commentable_type", "commentable_id"], name: "index_comments_on_commentable_type_and_commentable_id"

  create_table "images", force: true do |t|
    t.string   "url",        null: false
    t.integer  "post_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "images", ["post_id"], name: "index_images_on_post_id"

  create_table "posts", force: true do |t|
    t.integer  "author_id",  null: false
    t.string   "title",      null: false
    t.text     "content",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posts", ["author_id"], name: "index_posts_on_author_id"
  add_index "posts", ["created_at"], name: "index_posts_on_created_at"

  create_table "users", force: true do |t|
    t.string   "name",       null: false
    t.string   "city",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["name"], name: "index_users_on_name"

end
