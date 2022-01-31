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

ActiveRecord::Schema.define(version: 2022_01_21_200623) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "auto_brands", force: :cascade do |t|
    t.string "name", limit: 60, null: false
    t.bigint "rental_company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_auto_brands_on_deleted_at"
    t.index ["rental_company_id"], name: "index_auto_brands_on_rental_company_id"
  end

  create_table "auto_colors", force: :cascade do |t|
    t.string "name", limit: 60, null: false
    t.bigint "rental_company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_auto_colors_on_deleted_at"
    t.index ["rental_company_id"], name: "index_auto_colors_on_rental_company_id"
  end

  create_table "auto_directions", force: :cascade do |t|
    t.integer "direction", default: 0, null: false
    t.bigint "rental_company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_auto_directions_on_deleted_at"
    t.index ["rental_company_id"], name: "index_auto_directions_on_rental_company_id"
  end

  create_table "auto_doors", force: :cascade do |t|
    t.integer "door", default: 0, null: false
    t.bigint "rental_company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_auto_doors_on_deleted_at"
    t.index ["rental_company_id"], name: "index_auto_doors_on_rental_company_id"
  end

  create_table "auto_exchanges", force: :cascade do |t|
    t.integer "exchange", default: 0, null: false
    t.bigint "rental_company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_auto_exchanges_on_deleted_at"
    t.index ["rental_company_id"], name: "index_auto_exchanges_on_rental_company_id"
  end

  create_table "auto_fuels", force: :cascade do |t|
    t.integer "fuel", default: 0, null: false
    t.bigint "rental_company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_auto_fuels_on_deleted_at"
    t.index ["rental_company_id"], name: "index_auto_fuels_on_rental_company_id"
  end

  create_table "auto_mileages", force: :cascade do |t|
    t.string "mileage", limit: 60, null: false
    t.bigint "rental_company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_auto_mileages_on_deleted_at"
    t.index ["rental_company_id"], name: "index_auto_mileages_on_rental_company_id"
  end

  create_table "auto_models", force: :cascade do |t|
    t.string "name", limit: 60, null: false
    t.bigint "rental_company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_auto_models_on_deleted_at"
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
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_auto_optionals_on_deleted_at"
    t.index ["rental_company_id"], name: "index_auto_optionals_on_rental_company_id"
  end

  create_table "auto_plates", force: :cascade do |t|
    t.string "name", limit: 7, null: false
    t.bigint "rental_company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_auto_plates_on_deleted_at"
    t.index ["rental_company_id"], name: "index_auto_plates_on_rental_company_id"
  end

  create_table "auto_powers", force: :cascade do |t|
    t.decimal "power"
    t.bigint "rental_company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_auto_powers_on_deleted_at"
    t.index ["rental_company_id"], name: "index_auto_powers_on_rental_company_id"
  end

  create_table "auto_types", force: :cascade do |t|
    t.string "name", limit: 60, null: false
    t.bigint "rental_company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_auto_types_on_deleted_at"
    t.index ["rental_company_id"], name: "index_auto_types_on_rental_company_id"
  end

  create_table "auto_years", force: :cascade do |t|
    t.string "year", limit: 4, null: false
    t.bigint "rental_company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_auto_years_on_deleted_at"
    t.index ["rental_company_id"], name: "index_auto_years_on_rental_company_id"
  end

  create_table "autos", force: :cascade do |t|
    t.string "name", limit: 60, null: false
    t.string "description", limit: 120
    t.string "image_1_path"
    t.decimal "unit_price", precision: 9, scale: 2
    t.bigint "rental_company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "category_id"
    t.bigint "auto_brand_id"
    t.bigint "auto_type_id"
    t.bigint "auto_year_id"
    t.bigint "auto_mileage_id"
    t.bigint "auto_power_id"
    t.bigint "auto_fuel_id"
    t.bigint "auto_exchange_id"
    t.bigint "auto_direction_id"
    t.bigint "auto_color_id"
    t.bigint "auto_door_id"
    t.bigint "auto_plate_id"
    t.bigint "auto_model_id"
    t.bigint "auto_optional_id"
    t.datetime "deleted_at"
    t.index ["auto_brand_id"], name: "index_autos_on_auto_brand_id"
    t.index ["auto_color_id"], name: "index_autos_on_auto_color_id"
    t.index ["auto_direction_id"], name: "index_autos_on_auto_direction_id"
    t.index ["auto_door_id"], name: "index_autos_on_auto_door_id"
    t.index ["auto_exchange_id"], name: "index_autos_on_auto_exchange_id"
    t.index ["auto_fuel_id"], name: "index_autos_on_auto_fuel_id"
    t.index ["auto_mileage_id"], name: "index_autos_on_auto_mileage_id"
    t.index ["auto_model_id"], name: "index_autos_on_auto_model_id"
    t.index ["auto_optional_id"], name: "index_autos_on_auto_optional_id"
    t.index ["auto_plate_id"], name: "index_autos_on_auto_plate_id"
    t.index ["auto_power_id"], name: "index_autos_on_auto_power_id"
    t.index ["auto_type_id"], name: "index_autos_on_auto_type_id"
    t.index ["auto_year_id"], name: "index_autos_on_auto_year_id"
    t.index ["category_id"], name: "index_autos_on_category_id"
    t.index ["deleted_at"], name: "index_autos_on_deleted_at"
    t.index ["rental_company_id"], name: "index_autos_on_rental_company_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.date "start_date", null: false
    t.date "end_date", null: false
    t.integer "status", default: 0, null: false
    t.decimal "total", precision: 9, scale: 2
    t.decimal "subtotal", precision: 9, scale: 2
    t.decimal "perc_discount", precision: 9, scale: 2
    t.decimal "discount", precision: 9, scale: 2
    t.bigint "auto_id", null: false
    t.bigint "customer_id"
    t.bigint "users_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "deleted_at"
    t.index ["auto_id"], name: "index_bookings_on_auto_id"
    t.index ["customer_id"], name: "index_bookings_on_customer_id"
    t.index ["deleted_at"], name: "index_bookings_on_deleted_at"
    t.index ["users_id"], name: "index_bookings_on_users_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name", limit: 60, null: false
    t.string "description", limit: 120
    t.bigint "rental_company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_categories_on_deleted_at"
    t.index ["rental_company_id"], name: "index_categories_on_rental_company_id"
  end

  create_table "customer_addresses", force: :cascade do |t|
    t.string "country", limit: 50, null: false
    t.string "uf", limit: 50, null: false
    t.string "city", limit: 50, null: false
    t.string "district", limit: 50, null: false
    t.string "complement", limit: 50
    t.bigint "number", null: false
    t.string "street", limit: 50, null: false
    t.string "cep", null: false
    t.bigint "customer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "deleted_at"
    t.index ["customer_id"], name: "index_customer_addresses_on_customer_id"
    t.index ["deleted_at"], name: "index_customer_addresses_on_deleted_at"
  end

  create_table "customers", force: :cascade do |t|
    t.string "avatar"
    t.string "corporate_name", limit: 60, null: false
    t.string "fantasy_name", limit: 60, null: false
    t.string "email", limit: 50, null: false
    t.string "cnpj", null: false
    t.string "phone", limit: 15, null: false
    t.string "cel_phone", limit: 15, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "rental_company_id", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_customers_on_deleted_at"
    t.index ["rental_company_id"], name: "index_customers_on_rental_company_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "star", null: false
    t.string "description"
    t.bigint "booking_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "deleted_at"
    t.index ["booking_id"], name: "index_ratings_on_booking_id"
    t.index ["deleted_at"], name: "index_ratings_on_deleted_at"
  end

  create_table "rental_companies", force: :cascade do |t|
    t.string "avatar"
    t.string "corporate_name", limit: 60, null: false
    t.string "fantasy_name", limit: 60, null: false
    t.string "email", limit: 50, null: false
    t.string "cnpj", null: false
    t.string "phone", limit: 15, null: false
    t.string "cel_phone", limit: 15, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_rental_companies_on_deleted_at"
  end

  create_table "user_operators", force: :cascade do |t|
    t.string "avatar"
    t.string "name", limit: 60, null: false
    t.string "username", limit: 60, null: false
    t.string "email", limit: 50, null: false
    t.string "password_digest"
    t.string "cpf", null: false
    t.string "phone", limit: 15, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "rental_company_id", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_user_operators_on_deleted_at"
    t.index ["rental_company_id"], name: "index_user_operators_on_rental_company_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "avatar"
    t.string "name", limit: 60, null: false
    t.string "username", limit: 60, null: false
    t.string "email", limit: 50, null: false
    t.string "password_digest"
    t.string "cpf", null: false
    t.string "phone", limit: 15, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "rental_company_id", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_users_on_deleted_at"
    t.index ["rental_company_id"], name: "index_users_on_rental_company_id"
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
  add_foreign_key "autos", "auto_colors"
  add_foreign_key "autos", "auto_directions"
  add_foreign_key "autos", "auto_doors"
  add_foreign_key "autos", "auto_exchanges"
  add_foreign_key "autos", "auto_fuels"
  add_foreign_key "autos", "auto_mileages"
  add_foreign_key "autos", "auto_models"
  add_foreign_key "autos", "auto_optionals"
  add_foreign_key "autos", "auto_plates"
  add_foreign_key "autos", "auto_powers"
  add_foreign_key "autos", "auto_types"
  add_foreign_key "autos", "auto_years"
  add_foreign_key "autos", "categories"
  add_foreign_key "autos", "rental_companies"
  add_foreign_key "bookings", "autos"
  add_foreign_key "bookings", "customers"
  add_foreign_key "bookings", "users", column: "users_id"
  add_foreign_key "categories", "rental_companies"
  add_foreign_key "customer_addresses", "customers"
  add_foreign_key "customers", "rental_companies"
  add_foreign_key "ratings", "bookings"
  add_foreign_key "user_operators", "rental_companies"
  add_foreign_key "users", "rental_companies"
end
