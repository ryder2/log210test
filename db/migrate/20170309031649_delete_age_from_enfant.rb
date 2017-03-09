class DeleteAgeFromEnfant < ActiveRecord::Migration
  def change
	remove_column :enfants, :age
  end
end
