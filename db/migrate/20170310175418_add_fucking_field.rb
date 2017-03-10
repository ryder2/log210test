class AddFuckingField < ActiveRecord::Migration
  def change
	add_column :demande_egs, :deroulement_dernier_contact, :string
  end
end
