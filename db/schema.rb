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

ActiveRecord::Schema.define(version: 2020_03_03_052735) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "businesses", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name"
    t.string "industry"
    t.text "bio"
    t.string "email"
    t.string "website"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_businesses_on_user_id"
  end

  create_table "charities", force: :cascade do |t|
    t.string "name"
    t.text "bio"
    t.string "address"
    t.string "email"
    t.string "website"
    t.float "latitude"
    t.float "longitude"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_charities_on_user_id"
  end

  create_table "claims", force: :cascade do |t|
    t.bigint "food_donation_id"
    t.bigint "charity_id"
    t.bigint "business_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_id"], name: "index_claims_on_business_id"
    t.index ["charity_id"], name: "index_claims_on_charity_id"
    t.index ["food_donation_id"], name: "index_claims_on_food_donation_id"
  end

  create_table "donation_availabilities", force: :cascade do |t|
    t.date "start_time"
    t.date "end_time"
    t.bigint "food_donation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["food_donation_id"], name: "index_donation_availabilities_on_food_donation_id"
  end

  create_table "food_donations", force: :cascade do |t|
    t.boolean "dropoff"
    t.integer "distance_limit"
    t.string "status"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "food_item_tags", force: :cascade do |t|
    t.bigint "food_item_id"
    t.bigint "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["food_item_id"], name: "index_food_item_tags_on_food_item_id"
    t.index ["tag_id"], name: "index_food_item_tags_on_tag_id"
  end

  create_table "food_items", force: :cascade do |t|
    t.bigint "business_id"
    t.string "name"
    t.date "expiry_date"
    t.string "description"
    t.integer "quantity"
    t.string "measure"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "food_donation_id"
    t.index ["business_id"], name: "index_food_items_on_business_id"
    t.index ["food_donation_id"], name: "index_food_items_on_food_donation_id"
  end

  create_table "no_shows", force: :cascade do |t|
    t.bigint "claim_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["claim_id"], name: "index_no_shows_on_claim_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "claim_id"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "star"
    t.index ["claim_id"], name: "index_reviews_on_claim_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.string "account"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "businesses", "users"
  add_foreign_key "charities", "users"
  add_foreign_key "claims", "businesses"
  add_foreign_key "claims", "charities"
  add_foreign_key "claims", "food_donations"
  add_foreign_key "donation_availabilities", "food_donations"
  add_foreign_key "food_item_tags", "food_items"
  add_foreign_key "food_item_tags", "tags"
  add_foreign_key "food_items", "businesses"
  add_foreign_key "food_items", "food_donations"
  add_foreign_key "no_shows", "claims"
  add_foreign_key "reviews", "claims"
end
