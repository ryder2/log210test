class ChangeFamilleIdToString < ActiveRecord::Migration
  def change
	change_column :demandes, :famille_id, :string
  end
end
