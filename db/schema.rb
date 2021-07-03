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

ActiveRecord::Schema.define(version: 2021_07_03_044833) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string "title", null: false
    t.date "date", null: false
    t.string "location"
    t.text "details"
    t.boolean "expired"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "job_id"
    t.index ["job_id"], name: "index_events_on_job_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "title", null: false
    t.string "company", null: false
    t.integer "status", null: false
    t.integer "salary"
    t.string "url"
    t.string "location"
    t.text "details"
    t.string "contact_name"
    t.string "contact_email"
    t.string "contact_phone"
    t.string "contact_socialmedia"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id", null: false
    t.string "coverletter_url"
    t.string "resume_url"
    t.string "extra_url"
    t.integer "index", default: 0
    t.index ["user_id"], name: "index_jobs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "email", null: false
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "events", "jobs"
  add_foreign_key "jobs", "users"
end
