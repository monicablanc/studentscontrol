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

ActiveRecord::Schema.define(version: 2022_06_13_044232) do

  create_table "charges", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name_concept"
    t.string "grade_concept"
    t.integer "cantidad"
    t.decimal "cost", precision: 16, scale: 2
    t.decimal "saldo", precision: 16, scale: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "student_id", null: false
    t.bigint "concept_id", null: false
    t.string "observaciones"
    t.index ["concept_id"], name: "index_charges_on_concept_id"
    t.index ["student_id"], name: "index_charges_on_student_id"
  end

  create_table "concepts", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name_concept"
    t.decimal "cost_concept", precision: 16, scale: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "generations", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "num_gen"
    t.datetime "fecha_inicial"
    t.datetime "fecha_final"
    t.integer "modalidad"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "payments", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name_concept"
    t.string "grade_concept"
    t.decimal "monto", precision: 16, scale: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "receipt_id", null: false
    t.bigint "charge_id", null: false
    t.bigint "concept_id", null: false
    t.index ["charge_id"], name: "index_payments_on_charge_id"
    t.index ["concept_id"], name: "index_payments_on_concept_id"
    t.index ["receipt_id"], name: "index_payments_on_receipt_id"
  end

  create_table "profile_units", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.bigint "unit_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["profile_id"], name: "index_profile_units_on_profile_id"
    t.index ["unit_id"], name: "index_profile_units_on_unit_id"
  end

  create_table "profiles", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name_profile"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "re_entries", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "student_id", null: false
    t.bigint "generation_id", null: false
    t.index ["generation_id"], name: "index_re_entries_on_generation_id"
    t.index ["student_id"], name: "index_re_entries_on_student_id"
  end

  create_table "receipts", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "folio"
    t.string "name_receipt"
    t.string "grade_concept"
    t.string "grupo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "student_id", null: false
    t.index ["folio"], name: "index_receipts_on_folio"
    t.index ["student_id"], name: "index_receipts_on_student_id"
  end

  create_table "states", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name_state"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "Clave", limit: 2
  end

  create_table "students", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name_student"
    t.datetime "fecha_nac"
    t.string "sexo"
    t.string "lugar_nac"
    t.string "calle"
    t.string "numero"
    t.string "colonia"
    t.string "cod_postal"
    t.string "tel_casa_alumno", limit: 10
    t.string "cel_alumno", limit: 10
    t.string "trabaja", limit: 2
    t.string "correo_alumno"
    t.boolean "seguro_med"
    t.string "tipo_seguromed"
    t.string "nom_padre"
    t.string "ocup_padre"
    t.string "tel_padre", limit: 10
    t.string "correo_padre"
    t.string "nom_madre"
    t.string "tel_madre", limit: 10
    t.string "ocup_madre"
    t.string "correo_madre"
    t.string "nombre_emergencia1"
    t.string "tel_emergencia1", limit: 10
    t.string "parentesco_emergencia1"
    t.string "nombre_emergencia2"
    t.string "tel_emergencia2", limit: 10
    t.string "parentesco_emergencia2"
    t.string "grupo"
    t.integer "modalidad"
    t.boolean "certificado_sec"
    t.boolean "acta_nac"
    t.boolean "curp"
    t.boolean "carta_cond"
    t.boolean "comprobante_domicilio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "generation_id", null: false
    t.string "ClaveCurp", limit: 18
    t.integer "num_control", null: false
    t.boolean "reglamento"
    t.integer "grade"
    t.boolean "lowt"
    t.boolean "lowd"
    t.string "otro"
    t.string "last_name1"
    t.string "last_name2"
    t.date "fecha_certsec"
    t.date "fecha_actanac"
    t.date "fecha_curp"
    t.date "fecha_carta"
    t.date "fecha_domicilio"
    t.date "fecha_reglamento"
    t.string "matricula"
    t.index ["generation_id"], name: "index_students_on_generation_id"
    t.index ["num_control"], name: "index_students_on_num_control"
  end

  create_table "units", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name_unit"
    t.integer "parent"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["parent"], name: "index_units_on_parent"
  end

  create_table "user_profiles", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "profile_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["profile_id"], name: "index_user_profiles_on_profile_id"
    t.index ["user_id"], name: "index_user_profiles_on_user_id"
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name_user"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "charges", "concepts"
  add_foreign_key "charges", "students"
  add_foreign_key "payments", "charges"
  add_foreign_key "payments", "concepts"
  add_foreign_key "payments", "receipts"
  add_foreign_key "profile_units", "profiles"
  add_foreign_key "profile_units", "units"
  add_foreign_key "re_entries", "generations"
  add_foreign_key "re_entries", "students"
  add_foreign_key "receipts", "students"
  add_foreign_key "students", "generations"
  add_foreign_key "user_profiles", "profiles"
  add_foreign_key "user_profiles", "users"
end
