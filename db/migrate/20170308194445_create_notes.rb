class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :texte
      t.date :dateCreation
      t.integer :famille_id
      t.integer :users_id

      t.timestamps null: false
    end
  end
end
