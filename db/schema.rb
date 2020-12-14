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

ActiveRecord::Schema.define(version: 2020_12_14_191023) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "estados", force: :cascade do |t|
    t.string "descripcion"
    t.string "clave"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "objetos", force: :cascade do |t|
    t.integer "peso"
    t.integer "tamano"
    t.integer "alto"
    t.integer "largo"
    t.integer "ancho"
    t.string "descripcion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "recibos", force: :cascade do |t|
    t.integer "subtotal"
    t.integer "tarifa"
    t.integer "iva"
    t.integer "total"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "viaje_id", null: false
    t.index ["viaje_id"], name: "index_recibos_on_viaje_id"
  end

  create_table "ticket_soportes", force: :cascade do |t|
    t.string "descripcion"
    t.string "estatus"
    t.date "fecha"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "viaje_id", null: false
    t.bigint "administrador_id", null: false
    t.index ["administrador_id"], name: "index_ticket_soportes_on_administrador_id"
    t.index ["viaje_id"], name: "index_ticket_soportes_on_viaje_id"
  end

  create_table "tipo_vehiculos", force: :cascade do |t|
    t.string "descripcion"
    t.string "clave"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "authentication_token", limit: 30
    t.string "role"
    t.integer "calificacionProm"
    t.bigint "estado_id"
    t.string "name"
    t.string "telefono"
    t.date "fecha_licencia"
    t.index ["authentication_token"], name: "index_users_on_authentication_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["estado_id"], name: "index_users_on_estado_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vehiculos", force: :cascade do |t|
    t.string "espacio"
    t.string "marca"
    t.string "modelo"
    t.string "color"
    t.string "placas"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.bigint "tipo_vehiculo_id"
    t.index ["tipo_vehiculo_id"], name: "index_vehiculos_on_tipo_vehiculo_id"
    t.index ["user_id"], name: "index_vehiculos_on_user_id"
  end

  create_table "viajes", force: :cascade do |t|
    t.string "lugarOrigen"
    t.string "lugarDestino"
    t.datetime "horaEntregadaAcordada"
    t.datetime "horaEntrega"
    t.datetime "horaRecogida"
    t.datetime "horaRecogidaAcordada"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.bigint "driver_id", null: false
    t.bigint "vehiculo_id", null: false
    t.bigint "objeto_id", null: false
    t.decimal "calificacionTransportista"
    t.decimal "calificacionCliente"
    t.integer "estado"
    t.index ["driver_id"], name: "index_viajes_on_driver_id"
    t.index ["objeto_id"], name: "index_viajes_on_objeto_id"
    t.index ["user_id"], name: "index_viajes_on_user_id"
    t.index ["vehiculo_id"], name: "index_viajes_on_vehiculo_id"
  end

  add_foreign_key "recibos", "viajes"
  add_foreign_key "ticket_soportes", "users", column: "administrador_id"
  add_foreign_key "ticket_soportes", "viajes"
  add_foreign_key "users", "estados"
  add_foreign_key "vehiculos", "tipo_vehiculos"
  add_foreign_key "vehiculos", "users"
  add_foreign_key "viajes", "objetos"
  add_foreign_key "viajes", "users"
  add_foreign_key "viajes", "users", column: "driver_id"
  add_foreign_key "viajes", "vehiculos"
end
