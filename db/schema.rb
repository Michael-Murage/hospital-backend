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

ActiveRecord::Schema.define(version: 3) do

  create_table "ailments", force: :cascade do |t|
    t.string "ailment_name"
    t.string "ailment_type"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.string "address"
    t.string "department"
    t.string "practice_type"
    t.string "town"
    t.string "ailment_type"
    t.integer "ailment_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "gender"
    t.string "birthdate"
    t.string "email"
    t.string "address"
    t.string "phone"
    t.string "town"
    t.string "ailment_name"
    t.string "ailment_type"
    t.integer "ailment_id"
  end

end
