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

ActiveRecord::Schema.define(version: 2019_11_25_235549) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "colours", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "subtotal"
    t.integer "taxes"
    t.integer "total"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sizes", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teddy_bear_colours", force: :cascade do |t|
    t.integer "teddy_bear_id", null: false
    t.integer "colour_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["colour_id"], name: "index_teddy_bear_colours_on_colour_id"
    t.index ["teddy_bear_id"], name: "index_teddy_bear_colours_on_teddy_bear_id"
  end

  create_table "teddy_bear_orders", force: :cascade do |t|
    t.integer "teddy_bear_id", null: false
    t.integer "order_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "cost"
    t.integer "quantity"
    t.index ["order_id"], name: "index_teddy_bear_orders_on_order_id"
    t.index ["teddy_bear_id"], name: "index_teddy_bear_orders_on_teddy_bear_id"
  end

  create_table "teddy_bears", force: :cascade do |t|
    t.string "name"
    t.integer "colour_id"
    t.string "description"
    t.integer "cost"
    t.integer "size_id", null: false
    t.integer "status_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["size_id"], name: "index_teddy_bears_on_size_id"
    t.index ["status_id"], name: "index_teddy_bears_on_status_id"
  end

  add_foreign_key "teddy_bear_colours", "colours"
  add_foreign_key "teddy_bear_colours", "teddy_bears"
  add_foreign_key "teddy_bear_orders", "orders"
  add_foreign_key "teddy_bear_orders", "teddy_bears"
  add_foreign_key "teddy_bears", "sizes"
  add_foreign_key "teddy_bears", "statuses"
end
