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

ActiveRecord::Schema.define(version: 20170310175418) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "demande_egs", force: :cascade do |t|
    t.string   "motif"
    t.string   "conditions"
    t.date     "date_separation"
    t.boolean  "echange_garde"
    t.string   "reactions_eg"
    t.date     "date_dernier_contact"
    t.string   "description_enfant"
    t.boolean  "contact_pg"
    t.string   "forme_contact_pg"
    t.string   "attitude_parent"
    t.string   "attitude_enfant"
    t.string   "a_suivre"
    t.integer  "demande_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "deroulement_dernier_contact"
  end

  create_table "demandes", force: :cascade do |t|
    t.string   "demande_id"
    t.string   "service"
    t.string   "frequence"
    t.string   "statut"
    t.string   "demandeur"
    t.string   "payee_par"
    t.string   "famille_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "motif_id"
    t.string   "transport"
    t.string   "refere_par"
    t.integer  "user_id"
  end

  create_table "enfants", force: :cascade do |t|
    t.string   "residence"
    t.string   "nom"
    t.integer  "demande_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.date     "date_naissance"
    t.string   "no_RAMQ"
    t.string   "allergies"
    t.string   "personnes_auth"
    t.string   "renseignements"
  end

  create_table "familles", force: :cascade do |t|
    t.string   "nom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "dossier_id"
    t.string   "statut"
  end

  create_table "motifs", force: :cascade do |t|
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
    t.string   "telephone_res"
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
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "telephone_travail"
    t.string   "telephone_cell"
  end

  create_table "parents", force: :cascade do |t|
    t.integer  "statut"
    t.date     "date_naissance"
    t.string   "nom"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "demande_id"
    t.string   "no_permis_conduire"
    t.string   "no_RAMQ"
    t.string   "avocat"
    t.string   "avocatTelephone"
    t.float    "tarification"
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

  create_table "vs_demandes", force: :cascade do |t|
    t.string   "motif_pv"
    t.string   "motivations_pv"
    t.boolean  "interdit_contact_pv"
    t.date     "date_separation_pv"
    t.boolean  "contact_enfant_pv"
    t.boolean  "contact_telephone_enfant_pv"
    t.string   "attitude_parent_pv"
    t.integer  "demande_id"
    t.string   "motif_pg"
    t.date     "date_separation_pg"
    t.date     "date_dernier_contact_pg"
    t.string   "dernier_contact_deroulement_pg"
    t.boolean  "contact_telephone_enfant_pg"
    t.boolean  "autorisation_accompagnement_pg"
    t.string   "personnes_autorisees_pg"
    t.string   "attitude_parent_pg"
    t.string   "jeux_favoris_pg"
    t.string   "gout_alimentaire_pg"
    t.boolean  "enfant_sait_visite_pg"
    t.string   "reaction_visite_pg"
    t.string   "attitude_enfant_pg"
    t.string   "autre_pg"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

end
