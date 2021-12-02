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

ActiveRecord::Schema.define(version: 2021_11_30_215828) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "directors", force: :cascade do |t|
    t.string "name"
    t.integer "imdb_rank"
    t.boolean "tv_credit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "films", force: :cascade do |t|
    t.bigint "director_id"
    t.string "name"
    t.integer "rt_rank"
    t.boolean "nominated"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["director_id"], name: "index_films_on_director_id"
  end

  create_table "galleries", force: :cascade do |t|
    t.string "name"
    t.boolean "non_profit"
    t.float "entry_cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pieces", force: :cascade do |t|
    t.bigint "gallery_id"
    t.string "name"
    t.string "artist"
    t.integer "year"
    t.boolean "original"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gallery_id"], name: "index_pieces_on_gallery_id"
  end

  add_foreign_key "films", "directors"
  add_foreign_key "pieces", "galleries"
end
