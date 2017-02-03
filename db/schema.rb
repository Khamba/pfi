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

ActiveRecord::Schema.define(version: 20170109060849) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.integer  "addressable_id"
    t.string   "addressable_type"
    t.string   "state"
    t.string   "city"
    t.string   "pincode"
    t.text     "address_lines"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "addresses", ["addressable_type", "addressable_id"], name: "index_addresses_on_addressable_type_and_addressable_id", using: :btree

  create_table "admins", force: :cascade do |t|
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.integer  "login_count",        default: 0, null: false
    t.integer  "failed_login_count", default: 0, null: false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree

  create_table "doctor_hospitals", force: :cascade do |t|
    t.integer  "doctor_id"
    t.integer  "hospital_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "doctor_hospitals", ["doctor_id"], name: "index_doctor_hospitals_on_doctor_id", using: :btree
  add_index "doctor_hospitals", ["hospital_id"], name: "index_doctor_hospitals_on_hospital_id", using: :btree

  create_table "doctor_specialities", force: :cascade do |t|
    t.integer  "doctor_id"
    t.integer  "speciality_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "doctor_specialities", ["doctor_id"], name: "index_doctor_specialities_on_doctor_id", using: :btree
  add_index "doctor_specialities", ["speciality_id"], name: "index_doctor_specialities_on_speciality_id", using: :btree

  create_table "doctors", force: :cascade do |t|
    t.string   "name"
    t.string   "aadhar_number"
    t.string   "mobile_number"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.integer  "login_count",        default: 0, null: false
    t.integer  "failed_login_count", default: 0, null: false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "doctors", ["aadhar_number"], name: "index_doctors_on_aadhar_number", unique: true, using: :btree

  create_table "hospitals", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patient_approved_doctors", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "doctor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "patient_approved_doctors", ["doctor_id"], name: "index_patient_approved_doctors_on_doctor_id", using: :btree
  add_index "patient_approved_doctors", ["patient_id"], name: "index_patient_approved_doctors_on_patient_id", using: :btree

  create_table "patient_doctor_checkup_reports", force: :cascade do |t|
    t.integer  "report_id"
    t.integer  "patient_doctor_checkup_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "patient_doctor_checkup_reports", ["patient_doctor_checkup_id"], name: "patient_doctor_checkup_index", using: :btree
  add_index "patient_doctor_checkup_reports", ["report_id"], name: "checkup_report_index", using: :btree

  create_table "patient_doctor_checkups", force: :cascade do |t|
    t.integer  "doctor_id"
    t.integer  "patient_id"
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "patient_doctor_checkups", ["doctor_id"], name: "index_patient_doctor_checkups_on_doctor_id", using: :btree
  add_index "patient_doctor_checkups", ["patient_id"], name: "index_patient_doctor_checkups_on_patient_id", using: :btree

  create_table "patients", force: :cascade do |t|
    t.string   "name"
    t.string   "aadhar_number"
    t.string   "mobile_number"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.integer  "login_count",        default: 0, null: false
    t.integer  "failed_login_count", default: 0, null: false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "patients", ["aadhar_number"], name: "index_patients_on_aadhar_number", unique: true, using: :btree

  create_table "reports", force: :cascade do |t|
    t.text     "doctor_comment"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "specialities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "doctor_hospitals", "doctors"
  add_foreign_key "doctor_hospitals", "hospitals"
  add_foreign_key "doctor_specialities", "doctors"
  add_foreign_key "doctor_specialities", "specialities"
  add_foreign_key "patient_approved_doctors", "doctors"
  add_foreign_key "patient_approved_doctors", "patients"
  add_foreign_key "patient_doctor_checkup_reports", "patient_doctor_checkups"
  add_foreign_key "patient_doctor_checkup_reports", "reports"
  add_foreign_key "patient_doctor_checkups", "doctors"
  add_foreign_key "patient_doctor_checkups", "patients"
end
