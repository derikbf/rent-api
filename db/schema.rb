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

ActiveRecord::Schema.define(version: 2022_01_19_222442) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "auto_brands", force: :cascade do |t|
    t.string "name"
    t.bigint "rental_company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["rental_company_id"], name: "index_auto_brands_on_rental_company_id"
  end

  create_table "auto_colors", force: :cascade do |t|
    t.string "name"
    t.bigint "rental_company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["rental_company_id"], name: "index_auto_colors_on_rental_company_id"
  end

  create_table "auto_directions", force: :cascade do |t|
    t.integer "direction"
    t.bigint "rental_company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["rental_company_id"], name: "index_auto_directions_on_rental_company_id"
  end

  create_table "auto_doors", force: :cascade do |t|
    t.integer "door"
    t.bigint "rental_company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["rental_company_id"], name: "index_auto_doors_on_rental_company_id"
  end

  create_table "auto_exchanges", force: :cascade do |t|
    t.integer "exchange"
    t.bigint "rental_company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["rental_company_id"], name: "index_auto_exchanges_on_rental_company_id"
  end

  create_table "auto_fuels", force: :cascade do |t|
    t.integer "fuel"
    t.bigint "rental_company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["rental_company_id"], name: "index_auto_fuels_on_rental_company_id"
  end

  create_table "auto_mileages", force: :cascade do |t|
    t.integer "mileage"
    t.bigint "rental_company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["rental_company_id"], name: "index_auto_mileages_on_rental_company_id"
  end

  create_table "auto_models", force: :cascade do |t|
    t.string "name"
    t.bigint "rental_company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["rental_company_id"], name: "index_auto_models_on_rental_company_id"
  end

  create_table "auto_optionals", force: :cascade do |t|
    t.boolean "eletric_glass"
    t.boolean "air_bag"
    t.boolean "eletrick_lock"
    t.boolean "air_conditioner"
    t.boolean "alarm"
    t.boolean "sound"
    t.boolean "on_board_computer"
    t.boolean "abs_brakes"
    t.boolean "reverse_sensor"
    t.boolean "reverse_camera"
    t.bigint "rental_company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["rental_company_id"], name: "index_auto_optionals_on_rental_company_id"
  end

  create_table "auto_plates", force: :cascade do |t|
    t.string "name"
    t.bigint "rental_company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["rental_company_id"], name: "index_auto_plates_on_rental_company_id"
  end

  create_table "auto_powers", force: :cascade do |t|
    t.decimal "power"
    t.bigint "rental_company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["rental_company_id"], name: "index_auto_powers_on_rental_company_id"
  end

  create_table "auto_types", force: :cascade do |t|
    t.string "name"
    t.bigint "rental_company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["rental_company_id"], name: "index_auto_types_on_rental_company_id"
  end

  create_table "auto_years", force: :cascade do |t|
    t.integer "year"
    t.bigint "rental_company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["rental_company_id"], name: "index_auto_years_on_rental_company_id"
  end

  create_table "autos", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "image_1_path"
    t.decimal "unit_price", precision: 9, scale: 2
    t.bigint "rental_company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "category_id"
    t.bigint "auto_brand_id"
    t.bigint "auto_types_id"
    t.bigint "auto_years_id"
    t.bigint "auto_mileages_id"
    t.bigint "auto_powers_id"
    t.bigint "auto_fuels_id"
    t.bigint "auto_exchange_id"
    t.bigint "auto_directions_id"
    t.bigint "auto_colors_id"
    t.bigint "auto_doors_id"
    t.bigint "auto_plates_id"
    t.bigint "auto_models_id"
    t.bigint "auto_optionals_id"
    t.index ["auto_brand_id"], name: "index_autos_on_auto_brand_id"
    t.index ["auto_colors_id"], name: "index_autos_on_auto_colors_id"
    t.index ["auto_directions_id"], name: "index_autos_on_auto_directions_id"
    t.index ["auto_doors_id"], name: "index_autos_on_auto_doors_id"
    t.index ["auto_exchange_id"], name: "index_autos_on_auto_exchange_id"
    t.index ["auto_fuels_id"], name: "index_autos_on_auto_fuels_id"
    t.index ["auto_mileages_id"], name: "index_autos_on_auto_mileages_id"
    t.index ["auto_models_id"], name: "index_autos_on_auto_models_id"
    t.index ["auto_optionals_id"], name: "index_autos_on_auto_optionals_id"
    t.index ["auto_plates_id"], name: "index_autos_on_auto_plates_id"
    t.index ["auto_powers_id"], name: "index_autos_on_auto_powers_id"
    t.index ["auto_types_id"], name: "index_autos_on_auto_types_id"
    t.index ["auto_years_id"], name: "index_autos_on_auto_years_id"
    t.index ["category_id"], name: "index_autos_on_category_id"
    t.index ["rental_company_id"], name: "index_autos_on_rental_company_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.bigint "auto_id", null: false
    t.bigint "customer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["auto_id"], name: "index_bookings_on_auto_id"
    t.index ["customer_id"], name: "index_bookings_on_customer_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "rental_company_id", null: false
    t.index ["rental_company_id"], name: "index_categories_on_rental_company_id"
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
    t.bigint "rental_company_id", null: false
    t.index ["rental_company_id"], name: "index_customers_on_rental_company_id"
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
    t.bigint "rental_company_id", null: false
    t.index ["rental_company_id"], name: "index_user_consumers_on_rental_company_id"
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
    t.bigint "rental_company_id", null: false
    t.index ["rental_company_id"], name: "index_user_operators_on_rental_company_id"
  end

  add_foreign_key "auto_brands", "rental_companies"
  add_foreign_key "auto_colors", "rental_companies"
  add_foreign_key "auto_directions", "rental_companies"
  add_foreign_key "auto_doors", "rental_companies"
  add_foreign_key "auto_exchanges", "rental_companies"
  add_foreign_key "auto_fuels", "rental_companies"
  add_foreign_key "auto_mileages", "rental_companies"
  add_foreign_key "auto_models", "rental_companies"
  add_foreign_key "auto_optionals", "rental_companies"
  add_foreign_key "auto_plates", "rental_companies"
  add_foreign_key "auto_powers", "rental_companies"
  add_foreign_key "auto_types", "rental_companies"
  add_foreign_key "auto_years", "rental_companies"
  add_foreign_key "autos", "auto_brands"
  add_foreign_key "autos", "auto_colors", column: "auto_colors_id"
  add_foreign_key "autos", "auto_directions", column: "auto_directions_id"
  add_foreign_key "autos", "auto_doors", column: "auto_doors_id"
  add_foreign_key "autos", "auto_exchanges"
  add_foreign_key "autos", "auto_fuels", column: "auto_fuels_id"
  add_foreign_key "autos", "auto_mileages", column: "auto_mileages_id"
  add_foreign_key "autos", "auto_models", column: "auto_models_id"
  add_foreign_key "autos", "auto_optionals", column: "auto_optionals_id"
  add_foreign_key "autos", "auto_plates", column: "auto_plates_id"
  add_foreign_key "autos", "auto_powers", column: "auto_powers_id"
  add_foreign_key "autos", "auto_types", column: "auto_types_id"
  add_foreign_key "autos", "auto_years", column: "auto_years_id"
  add_foreign_key "autos", "categories"
  add_foreign_key "autos", "rental_companies"
  add_foreign_key "bookings", "autos"
  add_foreign_key "bookings", "customers"
  add_foreign_key "categories", "rental_companies"
  add_foreign_key "customer_addresses", "customers"
  add_foreign_key "customers", "rental_companies"
  add_foreign_key "user_consumers", "rental_companies"
  add_foreign_key "user_operators", "rental_companies"
end
