class AddNoPermisConduireNoRamqToParent < ActiveRecord::Migration
  def change
	add_column :parents, :no_permis_conduire, :string
  	add_column :parents, :no_RAMQ, :string
	add_column :parents, :avocat, :string
	add_column :parents, :avocatTelephone, :string
	add_column :parents, :tarification, :float
  end
end
