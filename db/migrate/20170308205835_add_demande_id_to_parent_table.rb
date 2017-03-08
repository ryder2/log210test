class AddDemandeIdToParentTable < ActiveRecord::Migration
  def change
  	add_column :parents, :demande_id, :integer
  end
end
