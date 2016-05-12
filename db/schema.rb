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

ActiveRecord::Schema.define(version: 20160511133309) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "albumfotohotels", force: :cascade do |t|
    t.integer  "hotel_id"
    t.string   "foto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "albumfotorestorans", force: :cascade do |t|
    t.integer  "restaurant_id"
    t.string   "foto"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "beritas", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.string   "foto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.string   "title"
    t.text     "body"
    t.string   "subject"
    t.integer  "user_id",          null: false
    t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["commentable_id", "commentable_type"], name: "index_comments_on_commentable_id_and_commentable_type", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

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

  add_index "guide_wisatas", ["guide_id", "wisata_id"], name: "index_guide_wisatas_on_guide_id_and_wisata_id", unique: true, using: :btree
  add_index "guide_wisatas", ["guide_id"], name: "index_guide_wisatas_on_guide_id", using: :btree
  add_index "guide_wisatas", ["wisata_id"], name: "index_guide_wisatas_on_wisata_id", using: :btree

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

  add_index "guides", ["email"], name: "index_guides_on_email", unique: true, using: :btree
  add_index "guides", ["reset_password_token"], name: "index_guides_on_reset_password_token", unique: true, using: :btree

  create_table "hotels", force: :cascade do |t|
    t.integer  "wisata_id"
    t.string   "nama"
    t.text     "alamat"
    t.text     "deskripsi"
    t.string   "telp"
    t.string   "harga"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "foto"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "website"
    t.string   "jumlahkamar"
    t.string   "jamreservasi"
    t.string   "hargakamar"
    t.text     "fulldeskripsi"
    t.text     "transportasi"
  end

  create_table "jenishotels", force: :cascade do |t|
    t.integer  "hotel_id"
    t.string   "jenis_kamar"
    t.string   "foto"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "kategoris", force: :cascade do |t|
    t.string   "nama"
    t.string   "foto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mailboxer_conversation_opt_outs", force: :cascade do |t|
    t.integer "unsubscriber_id"
    t.string  "unsubscriber_type"
    t.integer "conversation_id"
  end

  add_index "mailboxer_conversation_opt_outs", ["conversation_id"], name: "index_mailboxer_conversation_opt_outs_on_conversation_id", using: :btree
  add_index "mailboxer_conversation_opt_outs", ["unsubscriber_id", "unsubscriber_type"], name: "index_mailboxer_conversation_opt_outs_on_unsubscriber_id_type", using: :btree

  create_table "mailboxer_conversations", force: :cascade do |t|
    t.string   "subject",    default: ""
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "mailboxer_notifications", force: :cascade do |t|
    t.string   "type"
    t.text     "body"
    t.string   "subject",              default: ""
    t.integer  "sender_id"
    t.string   "sender_type"
    t.integer  "conversation_id"
    t.boolean  "draft",                default: false
    t.string   "notification_code"
    t.integer  "notified_object_id"
    t.string   "notified_object_type"
    t.string   "attachment"
    t.datetime "updated_at",                           null: false
    t.datetime "created_at",                           null: false
    t.boolean  "global",               default: false
    t.datetime "expires"
  end

  add_index "mailboxer_notifications", ["conversation_id"], name: "index_mailboxer_notifications_on_conversation_id", using: :btree
  add_index "mailboxer_notifications", ["notified_object_id", "notified_object_type"], name: "index_mailboxer_notifications_on_notified_object_id_and_type", using: :btree
  add_index "mailboxer_notifications", ["sender_id", "sender_type"], name: "index_mailboxer_notifications_on_sender_id_and_sender_type", using: :btree
  add_index "mailboxer_notifications", ["type"], name: "index_mailboxer_notifications_on_type", using: :btree

  create_table "mailboxer_receipts", force: :cascade do |t|
    t.integer  "receiver_id"
    t.string   "receiver_type"
    t.integer  "notification_id",                            null: false
    t.boolean  "is_read",                    default: false
    t.boolean  "trashed",                    default: false
    t.boolean  "deleted",                    default: false
    t.string   "mailbox_type",    limit: 25
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  add_index "mailboxer_receipts", ["notification_id"], name: "index_mailboxer_receipts_on_notification_id", using: :btree
  add_index "mailboxer_receipts", ["receiver_id", "receiver_type"], name: "index_mailboxer_receipts_on_receiver_id_and_receiver_type", using: :btree

  create_table "menurestorans", force: :cascade do |t|
    t.integer  "restaurant_id"
    t.string   "nama_menu"
    t.string   "foto"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "wisata_id"
  end

  create_table "relationships", force: :cascade do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "relationships", ["followed_id"], name: "index_relationships_on_followed_id", using: :btree
  add_index "relationships", ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true, using: :btree
  add_index "relationships", ["follower_id"], name: "index_relationships_on_follower_id", using: :btree

  create_table "restaurants", force: :cascade do |t|
    t.integer  "wisata_id"
    t.string   "nama"
    t.text     "alamat"
    t.text     "deskripsi"
    t.string   "telp"
    t.string   "harga"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "foto"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "jambuka"
    t.string   "menu"
    t.text     "fulldeskripsi"
    t.text     "transportasi"
  end

  create_table "reviews", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.integer  "wisata_id"
    t.integer  "guide_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "foto"
  end

  add_index "reviews", ["guide_id"], name: "index_reviews_on_guide_id", using: :btree
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id", using: :btree
  add_index "reviews", ["wisata_id"], name: "index_reviews_on_wisata_id", using: :btree

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
    t.string   "provider"
    t.string   "uid"
    t.string   "fotourl"
    t.string   "token"
    t.string   "secret"
    t.boolean  "twitterlink"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "videos", force: :cascade do |t|
    t.string   "title"
    t.string   "author"
    t.string   "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "wisata_id"
  end

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

  add_index "votes", ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope", using: :btree
  add_index "votes", ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope", using: :btree

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
    t.string   "harga"
    t.integer  "cached_votes_total",      default: 0
    t.integer  "cached_votes_score",      default: 0
    t.integer  "cached_votes_up",         default: 0
    t.integer  "cached_votes_down",       default: 0
    t.integer  "cached_weighted_score",   default: 0
    t.integer  "cached_weighted_total",   default: 0
    t.float    "cached_weighted_average", default: 0.0
    t.string   "jambuka"
    t.text     "fulldeskripsi"
    t.text     "tips"
    t.text     "transportasi"
  end

  add_index "wisatas", ["cached_votes_down"], name: "index_wisatas_on_cached_votes_down", using: :btree
  add_index "wisatas", ["cached_votes_score"], name: "index_wisatas_on_cached_votes_score", using: :btree
  add_index "wisatas", ["cached_votes_total"], name: "index_wisatas_on_cached_votes_total", using: :btree
  add_index "wisatas", ["cached_votes_up"], name: "index_wisatas_on_cached_votes_up", using: :btree
  add_index "wisatas", ["cached_weighted_average"], name: "index_wisatas_on_cached_weighted_average", using: :btree
  add_index "wisatas", ["cached_weighted_score"], name: "index_wisatas_on_cached_weighted_score", using: :btree
  add_index "wisatas", ["cached_weighted_total"], name: "index_wisatas_on_cached_weighted_total", using: :btree
  add_index "wisatas", ["daerah_id"], name: "index_wisatas_on_daerah_id", using: :btree
  add_index "wisatas", ["kategori_id"], name: "index_wisatas_on_kategori_id", using: :btree

  add_foreign_key "guide_wisatas", "guides"
  add_foreign_key "guide_wisatas", "wisatas"
  add_foreign_key "mailboxer_conversation_opt_outs", "mailboxer_conversations", column: "conversation_id", name: "mb_opt_outs_on_conversations_id"
  add_foreign_key "mailboxer_notifications", "mailboxer_conversations", column: "conversation_id", name: "notifications_on_conversation_id"
  add_foreign_key "mailboxer_receipts", "mailboxer_notifications", column: "notification_id", name: "receipts_on_notification_id"
  add_foreign_key "reviews", "guides"
  add_foreign_key "reviews", "users"
  add_foreign_key "reviews", "wisatas"
  add_foreign_key "wisatas", "daerahs"
  add_foreign_key "wisatas", "kategoris"
end
