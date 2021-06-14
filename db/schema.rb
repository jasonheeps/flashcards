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

ActiveRecord::Schema.define(version: 2021_06_14_190741) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "decks", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_decks_on_user_id"
  end

  create_table "flashcard_progresses", force: :cascade do |t|
    t.bigint "iteration_id", null: false
    t.bigint "flashcard_id", null: false
    t.boolean "solved"
    t.integer "attempts"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["flashcard_id"], name: "index_flashcard_progresses_on_flashcard_id"
    t.index ["iteration_id"], name: "index_flashcard_progresses_on_iteration_id"
  end

  create_table "flashcards", force: :cascade do |t|
    t.bigint "deck_id", null: false
    t.text "question"
    t.text "solution"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["deck_id"], name: "index_flashcards_on_deck_id"
  end

  create_table "iterations", force: :cascade do |t|
    t.bigint "deck_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["deck_id"], name: "index_iterations_on_deck_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "decks", "users"
  add_foreign_key "flashcard_progresses", "flashcards"
  add_foreign_key "flashcard_progresses", "iterations"
  add_foreign_key "flashcards", "decks"
  add_foreign_key "iterations", "decks"
end
