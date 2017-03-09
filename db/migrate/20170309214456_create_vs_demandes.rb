class CreateVsDemandes < ActiveRecord::Migration
  def change
    create_table :vs_demandes do |t|
      t.string :motif_pv
      t.string :motivations_pv
      t.boolean :interdit_contact_pv
      t.date :date_separation_pv
      t.boolean :contact_enfant_pv
      t.boolean :contact_telephone_enfant_pv
      t.string :attitude_parent_pv
      t.integer :demande_id
      t.string :motif_pg
      t.date :date_separation_pg
      t.date :date_dernier_contact_pg
      t.string :dernier_contact_deroulement_pg
      t.boolean :contact_telephone_enfant_pg
      t.boolean :autorisation_accompagnement_pg
      t.string :personnes_autorisees_pg
      t.string :attitude_parent_pg
      t.string :jeux_favoris_pg
      t.string :gout_alimentaire_pg
      t.boolean :enfant_sait_visite_pg
      t.string :reaction_visite_pg
      t.string :attitude_enfant_pg
      t.string :autre_pg

      t.timestamps null: false
    end
  end
end
