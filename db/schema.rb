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

ActiveRecord::Schema.define(version: 20150716141805) do

  create_table "accessories", force: :cascade do |t|
    t.string   "category"
    t.string   "type"
    t.string   "color_family"
    t.boolean  "favorite",     default: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "bottoms", force: :cascade do |t|
    t.string   "category"
    t.string   "color_family"
    t.boolean  "favorite",     default: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "outfits", force: :cascade do |t|
    t.integer  "top_id"
    t.integer  "bottom_id"
    t.integer  "shoe_id"
    t.integer  "accessory_id"
    t.boolean  "favorite",     default: false
    t.string   "dress_level"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "outfits", ["accessory_id"], name: "index_outfits_on_accessory_id"
  add_index "outfits", ["bottom_id"], name: "index_outfits_on_bottom_id"
  add_index "outfits", ["shoe_id"], name: "index_outfits_on_shoe_id"
  add_index "outfits", ["top_id"], name: "index_outfits_on_top_id"

  create_table "shoes", force: :cascade do |t|
    t.string   "category"
    t.string   "color_family"
    t.boolean  "favorite",     default: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "tops", force: :cascade do |t|
    t.string   "category"
    t.string   "color_family"
    t.boolean  "favorite",     default: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
