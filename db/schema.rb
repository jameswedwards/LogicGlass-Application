# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_06_055701) do

  create_table "coordinator_check_ins", force: :cascade do |t|
    t.integer "coordinator_id", null: false
    t.integer "event_id", null: false
    t.datetime "check_in_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["coordinator_id"], name: "index_coordinator_check_ins_on_coordinator_id"
    t.index ["event_id"], name: "index_coordinator_check_ins_on_event_id"
  end

  create_table "coordinator_positions", force: :cascade do |t|
    t.string "position"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "coordinator_statuses", force: :cascade do |t|
    t.string "status"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "coordinators", force: :cascade do |t|
    t.integer "peoplesoft_id"
    t.string "first_name"
    t.string "middle_initial"
    t.string "last_name"
    t.date "date_of_birth"
    t.string "address"
    t.string "city"
    t.string "zip"
    t.integer "state_id", null: false
    t.integer "country_id", null: false
    t.string "home_phone"
    t.string "mobile_phone"
    t.boolean "payment"
    t.integer "student_class_id", null: false
    t.string "major"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "coordinator_position_id"
    t.integer "coordinator_status_id"
    t.index ["coordinator_position_id"], name: "index_coordinators_on_coordinator_position_id"
    t.index ["coordinator_status_id"], name: "index_coordinators_on_coordinator_status_id"
    t.index ["country_id"], name: "index_coordinators_on_country_id"
    t.index ["state_id"], name: "index_coordinators_on_state_id"
    t.index ["student_class_id"], name: "index_coordinators_on_student_class_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "country_abbreviation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "event_statuses", force: :cascade do |t|
    t.string "status"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "event_types", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "event_type"
  end

  create_table "events", force: :cascade do |t|
    t.string "description"
    t.datetime "event_date"
    t.integer "event_type_id", null: false
    t.integer "event_status_id", null: false
    t.integer "sponsor_id", null: false
    t.decimal "fee"
    t.string "address"
    t.string "building_name"
    t.string "city"
    t.string "zip"
    t.integer "state_id", null: false
    t.integer "country_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_events_on_country_id"
    t.index ["event_status_id"], name: "index_events_on_event_status_id"
    t.index ["event_type_id"], name: "index_events_on_event_type_id"
    t.index ["sponsor_id"], name: "index_events_on_sponsor_id"
    t.index ["state_id"], name: "index_events_on_state_id"
  end

  create_table "member_check_ins", force: :cascade do |t|
    t.integer "member_id", null: false
    t.integer "event_id", null: false
    t.datetime "check_in_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_member_check_ins_on_event_id"
    t.index ["member_id"], name: "index_member_check_ins_on_member_id"
  end

  create_table "member_statuses", force: :cascade do |t|
    t.string "status"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "members", force: :cascade do |t|
    t.integer "peoplesoft_id"
    t.string "first_name"
    t.string "middle_initial"
    t.string "last_name"
    t.date "date_of_birth"
    t.string "address"
    t.string "city"
    t.string "zip"
    t.integer "state_id", null: false
    t.integer "country_id", null: false
    t.string "home_phone"
    t.string "mobile_phone"
    t.boolean "payment"
    t.integer "student_class_id", null: false
    t.string "major"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "member_status_id"
    t.index ["country_id"], name: "index_members_on_country_id"
    t.index ["member_status_id"], name: "index_members_on_member_status_id"
    t.index ["state_id"], name: "index_members_on_state_id"
    t.index ["student_class_id"], name: "index_members_on_student_class_id"
  end

  create_table "officer_check_ins", force: :cascade do |t|
    t.integer "officer_id", null: false
    t.integer "event_id", null: false
    t.datetime "check_in_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_officer_check_ins_on_event_id"
    t.index ["officer_id"], name: "index_officer_check_ins_on_officer_id"
  end

  create_table "officer_positions", force: :cascade do |t|
    t.string "position"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "officer_statuses", force: :cascade do |t|
    t.string "status"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "officers", force: :cascade do |t|
    t.integer "peoplesoft_id"
    t.string "first_name"
    t.string "middle_initial"
    t.string "last_name"
    t.date "date_of_birth"
    t.string "address"
    t.string "city"
    t.string "zip"
    t.integer "state_id", null: false
    t.integer "country_id", null: false
    t.string "home_phone"
    t.string "mobile_phone"
    t.boolean "payment"
    t.integer "student_class_id", null: false
    t.string "major"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "officer_status_id"
    t.integer "officer_position_id"
    t.index ["country_id"], name: "index_officers_on_country_id"
    t.index ["officer_position_id"], name: "index_officers_on_officer_position_id"
    t.index ["officer_status_id"], name: "index_officers_on_officer_status_id"
    t.index ["state_id"], name: "index_officers_on_state_id"
    t.index ["student_class_id"], name: "index_officers_on_student_class_id"
  end

  create_table "sponsor_types", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "sponsor_type"
  end

  create_table "sponsors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "home_phone"
    t.string "mobile_phone"
    t.integer "sponsor_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "company"
    t.index ["sponsor_type_id"], name: "index_sponsors_on_sponsor_type_id"
  end

  create_table "states", force: :cascade do |t|
    t.integer "country_id", null: false
    t.string "name"
    t.string "state_abbreviation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_states_on_country_id"
  end

  create_table "student_classes", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "student_class"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "coordinator_check_ins", "coordinators"
  add_foreign_key "coordinator_check_ins", "events"
  add_foreign_key "coordinators", "coordinator_positions"
  add_foreign_key "coordinators", "coordinator_statuses"
  add_foreign_key "coordinators", "countries"
  add_foreign_key "coordinators", "states"
  add_foreign_key "coordinators", "student_classes"
  add_foreign_key "events", "countries"
  add_foreign_key "events", "event_statuses"
  add_foreign_key "events", "event_types"
  add_foreign_key "events", "sponsors"
  add_foreign_key "events", "states"
  add_foreign_key "member_check_ins", "events"
  add_foreign_key "member_check_ins", "members"
  add_foreign_key "members", "countries"
  add_foreign_key "members", "member_statuses"
  add_foreign_key "members", "states"
  add_foreign_key "members", "student_classes"
  add_foreign_key "officer_check_ins", "events"
  add_foreign_key "officer_check_ins", "officers"
  add_foreign_key "officers", "countries"
  add_foreign_key "officers", "officer_positions"
  add_foreign_key "officers", "officer_statuses"
  add_foreign_key "officers", "states"
  add_foreign_key "officers", "student_classes"
  add_foreign_key "sponsors", "sponsor_types"
  add_foreign_key "states", "countries"
end
