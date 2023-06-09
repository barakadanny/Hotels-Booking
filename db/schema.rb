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

ActiveRecord::Schema[7.0].define(version: 2023_04_02_202517) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hotels", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "room_photos", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "room_id"
    t.index ["room_id"], name: "index_room_photos_on_room_id"
  end

  create_table "room_types", force: :cascade do |t|
    t.bigint "room_id", null: false
    t.bigint "rtype_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_room_types_on_room_id"
    t.index ["rtype_id"], name: "index_room_types_on_rtype_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.text "description"
    t.decimal "price_per_night"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "hotel_id", null: false
    t.index ["hotel_id"], name: "index_rooms_on_hotel_id"
  end

  create_table "rtypes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_rooms", force: :cascade do |t|
    t.bigint "room_id", null: false
    t.bigint "service_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_service_rooms_on_room_id"
    t.index ["service_id"], name: "index_service_rooms_on_service_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.text "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "room_types", "rooms"
  add_foreign_key "room_types", "rtypes"
  add_foreign_key "rooms", "hotels", on_delete: :cascade
  add_foreign_key "service_rooms", "rooms"
  add_foreign_key "service_rooms", "services"
end
