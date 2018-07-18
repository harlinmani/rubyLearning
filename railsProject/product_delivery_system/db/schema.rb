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

ActiveRecord::Schema.define(:version => 20180718070840) do

  create_table "addresses", :primary_key => "address_id", :force => true do |t|
    t.text     "address",    :null => false
    t.string   "country",    :null => false
    t.string   "state",      :null => false
    t.string   "city",       :null => false
    t.integer  "pin",        :null => false
    t.integer  "person_id",  :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "addresses", ["person_id"], :name => "fk_addresses_people"

  create_table "buyers", :id => false, :force => true do |t|
    t.integer  "product_id"
    t.integer  "person_id"
    t.integer  "address_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "buyers", ["address_id"], :name => "fk_buyers_addresses"
  add_index "buyers", ["person_id"], :name => "fk_buyers_people"
  add_index "buyers", ["product_id"], :name => "fk_buyers_products"

  create_table "dispatchers", :primary_key => "dispatcher_id", :force => true do |t|
    t.integer  "product_id", :null => false
    t.integer  "address_id", :null => false
    t.integer  "quantity",   :null => false
    t.string   "status",     :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "dispatchers", ["address_id"], :name => "fk_dispatchers_addresses"
  add_index "dispatchers", ["product_id"], :name => "fk_dispatchers_products"

  create_table "logins", :primary_key => "username", :force => true do |t|
    t.string   "password",   :null => false
    t.integer  "person_id",  :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "logins", ["person_id"], :name => "logins_person_key", :unique => true

  create_table "people", :primary_key => "person_id", :force => true do |t|
    t.string   "name"
    t.string   "mobile"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "people", ["email"], :name => "people_email_key", :unique => true
  add_index "people", ["mobile"], :name => "people_mobile_key", :unique => true

  create_table "products", :primary_key => "product_id", :force => true do |t|
    t.integer  "sellar_id",    :null => false
    t.string   "product_no",   :null => false
    t.string   "product_name", :null => false
    t.text     "description"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "products", ["sellar_id"], :name => "fk_products_sellars"

  create_table "sellars", :primary_key => "sellar_id", :force => true do |t|
    t.integer  "person_id",  :null => false
    t.integer  "address_id", :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sellars", ["address_id"], :name => "fk_sellars_addresses"
  add_index "sellars", ["person_id", "address_id"], :name => "sellar_composit_key", :unique => true

end
