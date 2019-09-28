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

ActiveRecord::Schema.define(version: 2019_09_27_210628) do

  create_table "courses", force: :cascade do |t|
    t.string "courseId"
    t.string "shortName"
    t.string "name"
    t.integer "credits"
    t.integer "time"
    t.string "days"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "degrees", force: :cascade do |t|
    t.string "major"
    t.string "minor"
    t.integer "course_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_degrees_on_course_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "studentId"
    t.string "firstName"
    t.string "lastName"
    t.date "dob"
    t.string "address"
    t.string "schoolName"
    t.integer "degree_id", null: false
    t.date "startDate"
    t.date "projectedEd"
    t.decimal "gpa"
    t.integer "course_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_students_on_course_id"
    t.index ["degree_id"], name: "index_students_on_degree_id"
  end

  add_foreign_key "degrees", "courses"
  add_foreign_key "students", "courses"
  add_foreign_key "students", "degrees"
end
