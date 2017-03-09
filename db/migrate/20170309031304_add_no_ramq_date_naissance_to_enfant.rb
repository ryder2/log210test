class AddNoRamqDateNaissanceToEnfant < ActiveRecord::Migration
  def change
	add_column :enfants, :date_naissance, :date
  	add_column :enfants, :no_RAMQ, :string
	add_column :enfants, :allergies, :string
	add_column :enfants, :personnes_auth, :string
	add_column :enfants, :renseignements, :string
  end
end
