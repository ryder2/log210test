class ChangeStatutToBoolean < ActiveRecord::Migration
  def change
	change_column :demandes, :statut, :string
  end
end
