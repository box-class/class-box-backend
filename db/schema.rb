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

ActiveRecord::Schema.define(version: 2019_10_03_141507) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string "courseId"
    t.string "shortName"
    t.string "name"
    t.integer "credits"
    t.integer "time"
    t.string "days"
    t.bigint "degree_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["degree_id"], name: "index_courses_on_degree_id"
  end

  create_table "degrees", force: :cascade do |t|
    t.string "major"
    t.string "minor"
    t.bigint "student_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["student_id"], name: "index_degrees_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "studentId"
    t.string "firstName"
    t.string "lastName"
    t.date "dob"
    t.string "address"
    t.string "schoolName"
    t.date "startDate"
    t.date "projectedEd"
    t.decimal "gpa"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "courses", "degrees"
  add_foreign_key "degrees", "students"
end
