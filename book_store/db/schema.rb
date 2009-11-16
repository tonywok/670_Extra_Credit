# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20091116033841) do

  create_table "authors", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "book_id"
  end

  create_table "books", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "isbn"
    t.string   "title"
    t.string   "publisher"
    t.string   "catagory"
    t.integer  "min_required"
    t.decimal  "price",        :precision => 8, :scale => 2, :default => 0.0
    t.string   "year"
  end

  create_table "cart_items", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "carts", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "review"
    t.integer  "book_id"
    t.string   "name"
  end

  create_table "users", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "password"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "credit_card"
    t.integer  "credit_card_number"
    t.time     "exp_date"
  end

end
