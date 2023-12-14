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

ActiveRecord::Schema[7.1].define(version: 2023_12_14_133211) do
  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.string "genre"
    t.string "isbn"
    t.integer "availablecopies"
    t.integer "totalcopies"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "borrowings", force: :cascade do |t|
    t.date "borrow_date"
    t.date "due_date"
    t.boolean "returned"
    t.boolean "renewal_request"
    t.integer "user_id", null: false
    t.integer "copy_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["copy_id"], name: "index_borrowings_on_copy_id"
    t.index ["user_id"], name: "index_borrowings_on_user_id"
  end

  create_table "copies", force: :cascade do |t|
    t.integer "book_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_copies_on_book_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.date "reservation_date"
    t.boolean "notification_sent"
    t.boolean "reservation_completed"
    t.integer "user_id", null: false
    t.integer "book_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_reservations_on_book_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.integer "user_id", null: false
    t.integer "book_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_reviews_on_book_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "borrowings", "copies"
  add_foreign_key "borrowings", "users"
  add_foreign_key "copies", "books"
  add_foreign_key "reservations", "books"
  add_foreign_key "reservations", "users"
  add_foreign_key "reviews", "books"
  add_foreign_key "reviews", "users"
end
