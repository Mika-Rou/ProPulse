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

ActiveRecord::Schema[7.1].define(version: 2025_03_19_113221) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_values", force: :cascade do |t|
    t.string "typeable_type", null: false
    t.bigint "typeable_id", null: false
    t.bigint "category_id", null: false
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_category_values_on_category_id"
    t.index ["typeable_type", "typeable_id"], name: "index_category_values_on_typeable"
  end

  create_table "choices", force: :cascade do |t|
    t.integer "score"
    t.string "choice"
    t.bigint "question_id", null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_choices_on_category_id"
    t.index ["question_id"], name: "index_choices_on_question_id"
  end

  create_table "formations", force: :cascade do |t|
    t.string "name"
    t.string "level"
    t.integer "duration"
    t.integer "price"
    t.string "url_formation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_categories", force: :cascade do |t|
    t.bigint "category_id", null: false
    t.bigint "job_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_job_categories_on_category_id"
    t.index ["job_id"], name: "index_job_categories_on_job_id"
  end

  create_table "job_formations", force: :cascade do |t|
    t.bigint "job_id", null: false
    t.bigint "formation_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["formation_id"], name: "index_job_formations_on_formation_id"
    t.index ["job_id"], name: "index_job_formations_on_job_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "salary"
    t.string "url_job"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string "question"
    t.integer "position"
    t.bigint "test_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["test_id"], name: "index_questions_on_test_id"
  end

  create_table "tests", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.integer "duration"
    t.integer "nb_questions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "img_name"
    t.string "img_icon"
    t.string "description"
  end

  create_table "user_answers", force: :cascade do |t|
    t.bigint "choice_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["choice_id"], name: "index_user_answers_on_choice_id"
    t.index ["user_id"], name: "index_user_answers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.date "birth_date"
    t.string "address"
    t.integer "grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "profil_description"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "category_values", "categories"
  add_foreign_key "choices", "categories"
  add_foreign_key "choices", "questions"
  add_foreign_key "job_categories", "categories"
  add_foreign_key "job_categories", "jobs"
  add_foreign_key "job_formations", "formations"
  add_foreign_key "job_formations", "jobs"
  add_foreign_key "questions", "tests"
  add_foreign_key "user_answers", "choices"
  add_foreign_key "user_answers", "users"
end
