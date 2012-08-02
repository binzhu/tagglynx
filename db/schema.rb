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

ActiveRecord::Schema.define(:version => 20120802173053) do

  create_table "announcements", :force => true do |t|
    t.text     "body"
    t.integer  "enabled"
    t.integer  "allow_dismiss"
    t.integer  "sort"
    t.datetime "date_inserted"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "comments", :force => true do |t|
    t.integer  "discussion_id"
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "parentcomment_id"
  end

  create_table "discussions", :force => true do |t|
    t.integer  "webpage_id"
    t.string   "title"
    t.text     "content"
    t.integer  "active"
    t.integer  "sticky"
    t.integer  "user_id"
    t.integer  "countviews"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "friends", :force => true do |t|
    t.integer  "follower_id"
    t.integer  "followee_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.string   "date_inserted"
    t.integer  "tagcount"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "tags_objects", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "object_id"
    t.integer  "object_type"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "pwd"
    t.string   "seed"
    t.string   "fname"
    t.string   "mname"
    t.string   "lname"
    t.string   "country"
    t.string   "postal"
    t.text     "about"
    t.string   "email"
    t.integer  "showemail"
    t.integer  "gender"
    t.datetime "dob"
    t.integer  "invited_by"
    t.datetime "firstlogin"
    t.datetime "lastlogin"
    t.integer  "timediff"
    t.integer  "active"
    t.string   "fb_id"
    t.string   "twitter_id"
    t.string   "blog_link"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "webpages", :force => true do |t|
    t.string   "domain"
    t.string   "url"
    t.string   "title"
    t.integer  "user_id"
    t.integer  "active"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
