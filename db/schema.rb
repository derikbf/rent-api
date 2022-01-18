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

ActiveRecord::Schema.define(version: 2022_01_18_193555) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "autos", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "rental_company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["rental_company_id"], name: "index_autos_on_rental_company_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "auto_id", null: false
    t.index ["auto_id"], name: "index_categories_on_auto_id"
  end

  create_table "customer_addresses", force: :cascade do |t|
    t.string "country"
    t.string "uf"
    t.string "city"
    t.string "district"
    t.string "complement"
    t.string "number"
    t.string "street"
    t.string "cep"
    t.bigint "customer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_customer_addresses_on_customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "avatar"
    t.string "corporate_name"
    t.string "fantasy_name"
    t.string "email"
    t.string "cnpj"
    t.string "phone"
    t.string "cel_phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rental_companies", force: :cascade do |t|
    t.string "avatar"
    t.string "corporate_name"
    t.string "fantasy_name"
    t.string "email"
    t.string "cnpj"
    t.string "phone"
    t.string "cel_phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_consumers", force: :cascade do |t|
    t.string "avatar"
    t.string "name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "cpf"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_operators", force: :cascade do |t|
    t.string "avatar"
    t.string "name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "cpf"
    t.integer "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "autos", "rental_companies"
  add_foreign_key "categories", "autos"
  add_foreign_key "customer_addresses", "customers"
end
