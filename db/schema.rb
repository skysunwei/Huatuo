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

ActiveRecord::Schema.define(:version => 20120315164905) do

  create_table "apartments", :force => true do |t|
    t.string   "name"
    t.string   "website"
    t.integer  "phone_num"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "areas", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "assignments", :force => true do |t|
    t.date     "expired_date"
    t.integer  "apartment_id"
    t.integer  "user_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "assignments", ["apartment_id"], :name => "index_assignments_on_apartment_id"
  add_index "assignments", ["user_id"], :name => "index_assignments_on_user_id"

  create_table "books", :force => true do |t|
    t.date     "book_date"
    t.integer  "book_num"
    t.integer  "sub_apartment_id"
    t.integer  "user_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "books", ["sub_apartment_id"], :name => "index_books_on_sub_apartment_id"
  add_index "books", ["user_id"], :name => "index_books_on_user_id"

  create_table "sub_apartments", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "phone_num"
    t.integer  "apartment_id"
    t.integer  "area_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "sub_apartments", ["apartment_id"], :name => "index_sub_apartments_on_apartment_id"
  add_index "sub_apartments", ["area_id"], :name => "index_sub_apartments_on_area_id"

  create_table "sub_aprtment_images", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.integer  "sub_apartment_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "sub_aprtment_images", ["sub_apartment_id"], :name => "index_sub_aprtment_images_on_sub_apartment_id"

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "user_type"
  end

end
