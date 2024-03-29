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

ActiveRecord::Schema.define(version: 2024_02_01_020109) do

  create_table "journeys", force: :cascade do |t|
    t.date "date"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "pathway_id", null: false
    t.index ["pathway_id"], name: "index_journeys_on_pathway_id"
  end

  create_table "paths", force: :cascade do |t|
    t.string "purpose"
    t.integer "distance"
    t.datetime "start_at"
    t.datetime "end_at"
    t.float "estimated_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "status"
    t.integer "journey_id", null: false
    t.string "details"
    t.string "address"
    t.index ["journey_id"], name: "index_paths_on_journey_id"
  end

  create_table "pathways", force: :cascade do |t|
    t.date "date"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "journeys", "pathways"
  add_foreign_key "paths", "journeys"
end
