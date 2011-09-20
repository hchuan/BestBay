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

ActiveRecord::Schema.define(:version => 20110919220934) do

  create_table "bids", :force => true do |t|
    t.integer  "item_id"
    t.integer  "user_id"
    t.decimal  "bid_price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bids", ["item_id"], :name => "index_bids_on_item_id"
  add_index "bids", ["user_id"], :name => "index_bids_on_user_id"

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.decimal  "start_price"
    t.datetime "bid_end_date"
    t.string   "picture"
    t.integer  "category_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["category_id"], :name => "index_items_on_category_id"
  add_index "items", ["user_id"], :name => "index_items_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "state"
    t.string   "city"
    t.string   "country"
    t.integer  "zipcode"
    t.boolean  "seller"
    t.date     "dob"
    t.integer  "contact"
    t.string   "password"
    t.string   "secret_question"
    t.string   "secret_answer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
