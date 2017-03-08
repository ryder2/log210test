# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170308205835) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "demandes", force: :cascade do |t|
    t.string   "demande_id"
    t.string   "service"
    t.string   "frequence"
    t.integer  "statut"
    t.string   "demandeur"
    t.string   "payee_par"
    t.integer  "famille_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enfants", force: :cascade do |t|
    t.integer  "age"
    t.string   "residence"
    t.string   "nom"
    t.integer  "demande_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "familles", force: :cascade do |t|
    t.string   "nom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes", force: :cascade do |t|
    t.string   "texte"
    t.date     "dateCreation"
    t.integer  "famille_id"
    t.integer  "users_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "parentinfos", force: :cascade do |t|
    t.string   "courriel"
    t.string   "numero_tel"
    t.string   "nocivique"
    t.string   "rue"
    t.string   "appartement"
    t.string   "ville"
    t.string   "code_postal"
    t.string   "province"
    t.string   "nom_urgence"
    t.string   "numero_urgence"
    t.string   "note"
    t.integer  "parent_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "parents", force: :cascade do |t|
    t.integer  "statut"
    t.date     "date_naissance"
    t.string   "telephone"
    t.string   "nom"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "demande_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.integer  "role_id"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

end
