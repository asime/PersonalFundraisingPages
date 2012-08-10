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

ActiveRecord::Schema.define(:version => 20120810192743) do

  create_table "champions", :force => true do |t|
    t.string   "username"
    t.string   "fname"
    t.string   "lname"
    t.string   "city"
    t.string   "state"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "twitter_handle"
  end

  create_table "charities", :force => true do |t|
    t.string   "charity_name"
    t.string   "street1"
    t.string   "street2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "twitter_handle"
    t.string   "phone"
    t.string   "email"
    t.string   "facebook_page"
    t.string   "website_url"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "username"
    t.string   "password"
  end

  create_table "donations", :force => true do |t|
    t.decimal  "amount"
    t.text     "comments"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "donor_id"
    t.integer  "fundraiser_id"
  end

  create_table "donors", :force => true do |t|
    t.string   "username"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "password"
    t.string   "fname"
    t.string   "lname"
    t.string   "email"
    t.string   "street1"
    t.string   "street2"
    t.string   "city"
    t.string   "state"
    t.string   "postal_code"
    t.boolean  "display_name"
  end

  create_table "fundraisers", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.decimal  "goal"
    t.datetime "deadline"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "champion_id"
    t.string   "charity"
  end

end
