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

ActiveRecord::Schema.define(version: 20160516133849) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appellations", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "name"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "appellations", ["product_id"], name: "index_appellations_on_product_id", using: :btree

  create_table "areas", force: :cascade do |t|
    t.integer  "region_id"
    t.string   "name"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "areas", ["region_id"], name: "index_areas_on_region_id", using: :btree

  create_table "communities", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "url"
    t.integer  "highest_score"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "communities", ["product_id"], name: "index_communities_on_product_id", using: :btree

  create_table "community_reviews", force: :cascade do |t|
    t.integer  "community_id"
    t.string   "name"
    t.string   "url"
    t.text     "description"
    t.integer  "score"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "community_reviews", ["community_id"], name: "index_community_reviews_on_community_id", using: :btree

  create_table "degustations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "product_id"
    t.string   "description"
    t.integer  "rating"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "degustations", ["product_id"], name: "index_degustations_on_product_id", using: :btree
  add_index "degustations", ["user_id"], name: "index_degustations_on_user_id", using: :btree

  create_table "geo_locations", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "url"
    t.integer  "latitude"
    t.integer  "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "geo_locations", ["product_id"], name: "index_geo_locations_on_product_id", using: :btree

  create_table "labels", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "name"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "labels", ["product_id"], name: "index_labels_on_product_id", using: :btree

  create_table "product_attributes", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "name"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "product_attributes", ["product_id"], name: "index_product_attributes_on_product_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "type"
    t.string   "year"
    t.string   "url"
    t.text     "description"
    t.integer  "price_min"
    t.integer  "price_max"
    t.integer  "price_retail"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "name"
    t.string   "url"
    t.integer  "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "ratings", ["product_id"], name: "index_ratings_on_product_id", using: :btree

  create_table "regions", force: :cascade do |t|
    t.integer  "appellation_id"
    t.string   "name"
    t.string   "url"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "regions", ["appellation_id"], name: "index_regions_on_appellation_id", using: :btree

  create_table "retails", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "sku"
    t.string   "url"
    t.boolean  "in_stock"
    t.integer  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "retails", ["product_id"], name: "index_retails_on_product_id", using: :btree

  create_table "user_products", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "product_id"
    t.integer  "stock"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "user_products", ["product_id"], name: "index_user_products_on_product_id", using: :btree
  add_index "user_products", ["user_id"], name: "index_user_products_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "varietals", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "name"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "varietals", ["product_id"], name: "index_varietals_on_product_id", using: :btree

  create_table "vineyards", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "name"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "vineyards", ["product_id"], name: "index_vineyards_on_product_id", using: :btree

  create_table "vintages", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "name"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "vintages", ["product_id"], name: "index_vintages_on_product_id", using: :btree

  create_table "wine_types", force: :cascade do |t|
    t.integer  "varietal_id"
    t.string   "name"
    t.string   "url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "wine_types", ["varietal_id"], name: "index_wine_types_on_varietal_id", using: :btree

end
