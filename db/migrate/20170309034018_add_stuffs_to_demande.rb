class AddStuffsToDemande < ActiveRecord::Migration
  def change
	add_column :demandes, :transport, :string
	add_column :demandes, :refere_par, :string
	add_column :demandes, :user_id, :integer
  end
end
