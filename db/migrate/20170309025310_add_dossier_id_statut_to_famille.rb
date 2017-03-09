class AddDossierIdStatutToFamille < ActiveRecord::Migration
  def change
	add_column :familles, :dossier_id, :string
  	add_column :familles, :statut, :string 
  end
end