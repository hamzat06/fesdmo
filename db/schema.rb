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

ActiveRecord::Schema.define(version: 2021_12_14_105736) do

  create_table "doctors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "patient_reports", force: :cascade do |t|
    t.integer "report_id"
    t.integer "patient_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "surname"
    t.string "gender"
    t.string "marital_status"
    t.integer "phone_number"
    t.datetime "date_of_birth"
    t.string "address"
    t.string "email"
    t.string "occupation"
    t.string "religion"
    t.string "next_of_kin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "other_names"
    t.integer "doctor_id"
  end

  create_table "reports", force: :cascade do |t|
    t.integer "doctor_id"
    t.string "obesity"
    t.string "degree"
    t.text "recommendation"
    t.text "prescription"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "patient_id"
    t.text "extent"
  end

end
