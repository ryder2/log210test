class AddTelephonesToParentInfos < ActiveRecord::Migration
  def change
	add_column :parentinfos, :telephone_travail, :string
	add_column :parentinfos, :telephone_cell, :string
	rename_column :parentinfos, :numero_tel, :telephone_res
  end
end
