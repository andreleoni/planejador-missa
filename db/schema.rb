# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_12_18_135602) do
  create_table "ceremonies", force: :cascade do |t|
    t.string "title"
    t.datetime "starts_at"
    t.datetime "finish_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ceremony_parts", force: :cascade do |t|
    t.integer "ceremony_id", null: false
    t.string "title"
    t.string "external_url"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ceremony_id"], name: "index_ceremony_parts_on_ceremony_id"
  end

  add_foreign_key "ceremony_parts", "ceremonies"
end
