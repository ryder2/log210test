class CreateDemandeEgs < ActiveRecord::Migration
  def change
    create_table :demande_egs do |t|
      t.string :motif
      t.string :conditions
      t.date :date_separation
      t.boolean :echange_garde
      t.string :reactions_eg
      t.date :date_dernier_contact
      t.string :description_enfant
      t.boolean :contact_pg
      t.string :forme_contact_pg
      t.string :attitude_parent
      t.string :attitude_enfant
      t.string :a_suivre
      t.integer :demande_id

      t.timestamps null: false
    end
  end
end
