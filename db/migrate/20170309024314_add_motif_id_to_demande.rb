class AddMotifIdToDemande < ActiveRecord::Migration
  def change
	add_column :demandes, :motif_id, :integer
  end
end
