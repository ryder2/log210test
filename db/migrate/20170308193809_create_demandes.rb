class CreateDemandes < ActiveRecord::Migration
  def change
    create_table :demandes do |t|
      t.string :demande_id
      t.string :service
      t.string :frequence
      t.integer :statut
      t.string :demandeur
      t.string :payee_par
      t.integer :famille_id

      t.timestamps null: false
    end
  end
end
