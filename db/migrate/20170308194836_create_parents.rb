class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.integer :statut
      t.date :date_naissance
      t.string :telephone
      t.string :nom

      t.timestamps null: false
    end
  end
end
