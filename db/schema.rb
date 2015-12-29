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

ActiveRecord::Schema.define(version: 20151227065206) do

  create_table "admins", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "beritas", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.string   "foto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "daerahs", force: :cascade do |t|
    t.string   "nama"
    t.string   "foto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guide_wisatas", force: :cascade do |t|
    t.integer  "guide_id"
    t.integer  "wisata_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "guide_wisatas", ["guide_id", "wisata_id"], name: "index_guide_wisatas_on_guide_id_and_wisata_id", unique: true
  add_index "guide_wisatas", ["guide_id"], name: "index_guide_wisatas_on_guide_id"
  add_index "guide_wisatas", ["wisata_id"], name: "index_guide_wisatas_on_wisata_id"

  create_table "guides", force: :cascade do |t|
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
    t.string   "nama"
    t.string   "telp"
    t.text     "alamat"
    t.string   "foto"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.text     "bio"
  end

  add_index "guides", ["email"], name: "index_guides_on_email", unique: true
  add_index "guides", ["reset_password_token"], name: "index_guides_on_reset_password_token", unique: true

  create_table "kategoris", force: :cascade do |t|
    t.string   "nama"
    t.string   "foto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.integer  "wisata_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "foto"
    t.integer  "guide_id"
  end

  add_index "reviews", ["guide_id"], name: "index_reviews_on_guide_id"
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"
  add_index "reviews", ["wisata_id"], name: "index_reviews_on_wisata_id"

  create_table "sarans", force: :cascade do |t|
    t.string   "nama"
    t.string   "email"
    t.text     "pesan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.string   "nama"
    t.string   "username"
    t.string   "foto"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.text     "bio"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "votes", force: :cascade do |t|
    t.integer  "votable_id"
    t.string   "votable_type"
    t.integer  "voter_id"
    t.string   "voter_type"
    t.boolean  "vote_flag"
    t.string   "vote_scope"
    t.integer  "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope"
  add_index "votes", ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope"

  create_table "wisatas", force: :cascade do |t|
    t.string   "nama"
    t.text     "alamat"
    t.text     "deskripsi"
    t.integer  "daerah_id"
    t.integer  "kategori_id"
    t.string   "telp"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "foto"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "harga"
    t.integer  "cached_votes_total",      default: 0
    t.integer  "cached_votes_score",      default: 0
    t.integer  "cached_votes_up",         default: 0
    t.integer  "cached_votes_down",       default: 0
    t.integer  "cached_weighted_score",   default: 0
    t.integer  "cached_weighted_total",   default: 0
    t.float    "cached_weighted_average", default: 0.0
  end

  add_index "wisatas", ["cached_votes_down"], name: "index_wisatas_on_cached_votes_down"
  add_index "wisatas", ["cached_votes_score"], name: "index_wisatas_on_cached_votes_score"
  add_index "wisatas", ["cached_votes_total"], name: "index_wisatas_on_cached_votes_total"
  add_index "wisatas", ["cached_votes_up"], name: "index_wisatas_on_cached_votes_up"
  add_index "wisatas", ["cached_weighted_average"], name: "index_wisatas_on_cached_weighted_average"
  add_index "wisatas", ["cached_weighted_score"], name: "index_wisatas_on_cached_weighted_score"
  add_index "wisatas", ["cached_weighted_total"], name: "index_wisatas_on_cached_weighted_total"
  add_index "wisatas", ["daerah_id"], name: "index_wisatas_on_daerah_id"
  add_index "wisatas", ["kategori_id"], name: "index_wisatas_on_kategori_id"

end
