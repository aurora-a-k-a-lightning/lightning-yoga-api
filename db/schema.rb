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

ActiveRecord::Schema.define(version: 20180701011738) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "yoga_categories", force: :cascade do |t|
    t.string   "name"
    t.string   "short_name"
    t.string   "description"
    t.integer  "parent_yoga_category_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "yoga_pose_yoga_categories", force: :cascade do |t|
    t.integer "yoga_category_id"
    t.integer "yoga_pose_id"
    t.index ["yoga_category_id"], name: "index_yoga_pose_yoga_categories_on_yoga_category_id", using: :btree
    t.index ["yoga_pose_id"], name: "index_yoga_pose_yoga_categories_on_yoga_pose_id", using: :btree
  end

  create_table "yoga_poses", force: :cascade do |t|
    t.string   "sanskrit_name"
    t.string   "english_name"
    t.string   "img_url"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_foreign_key "yoga_pose_yoga_categories", "yoga_categories"
  add_foreign_key "yoga_pose_yoga_categories", "yoga_poses"
end
