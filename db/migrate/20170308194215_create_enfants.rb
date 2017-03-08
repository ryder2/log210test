class CreateEnfants < ActiveRecord::Migration
  def change
    create_table :enfants do |t|
      t.integer :age
      t.string :residence
      t.string :nom
      t.integer :demande_id

      t.timestamps null: false
    end
  end
end
