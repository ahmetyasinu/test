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

ActiveRecord::Schema.define(version: 2019_11_20_200626) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "adminpack"
  enable_extension "plpgsql"

  create_table "comments", id: :bigint, default: -> { "nextval('users_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "comment_name", default: "", null: false
    t.text "comment"
    t.index ["comment_name"], name: "index_users_on_email", unique: true
  end

  create_table "drivers", force: :cascade do |t|
    t.string "name", limit: 255, null: false
    t.string "surname", limit: 255
    t.date "date_of_birth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "tc"
    t.integer "tel"
    t.string "adress"
    t.string "comment"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "name", limit: 255, null: false
    t.string "code", limit: 20, null: false
    t.string "vehicle_class", limit: 20
    t.string "brand", limit: 20
    t.string "model", limit: 50
    t.integer "model_year"
    t.integer "fuel_capacity"
    t.string "fuel_type", limit: 10
    t.string "status", limit: 20, default: "active"
    t.date "purchase_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "comment1"
  end

end
