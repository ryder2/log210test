class DeleteTelephoneFromParent < ActiveRecord::Migration
  def change
	remove_column :parents, :telephone
  end
end
