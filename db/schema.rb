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

ActiveRecord::Schema.define(version: 2020_06_18_113132) do

  create_table "admins", force: :cascade do |t|
    t.string "email"
    t.string "encrypted_password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "babies", force: :cascade do |t|
    t.integer "customer_id"
    t.string "baby_name"
    t.integer "sex"
    t.date "birth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "baby_image_comments", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "baby_image_id"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "baby_images", force: :cascade do |t|
    t.string "baby_image_id"
    t.text "body"
    t.integer "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "body_temperatures", force: :cascade do |t|
    t.integer "baby_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "body"
  end

  create_table "body_weights", force: :cascade do |t|
    t.integer "baby_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "body"
  end

  create_table "categories", force: :cascade do |t|
    t.string "problem_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "problem_id"
    t.text "body"
    t.decimal "score", precision: 5, scale: 3
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_id"
    t.index ["email"], name: "index_customers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true
  end

  create_table "excretions", force: :cascade do |t|
    t.integer "baby_id"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "only"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "comment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "milk_powders", force: :cascade do |t|
    t.integer "baby_id"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mother_milks", force: :cascade do |t|
    t.integer "baby_id"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "problems", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "category_id"
    t.text "body"
    t.decimal "score", precision: 5, scale: 3
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relationships", force: :cascade do |t|
    t.integer "follower_id"
    t.integer "followed_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
