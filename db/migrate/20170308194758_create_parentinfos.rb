class CreateParentinfos < ActiveRecord::Migration
  def change
    create_table :parentinfos do |t|
      t.string :courriel
      t.string :numero_tel
      t.string :nocivique
      t.string :rue
      t.string :appartement
      t.string :ville
      t.string :code_postal
      t.string :province
      t.string :nom_urgence
      t.string :numero_urgence
      t.string :note
      t.integer :parent_id

      t.timestamps null: false
    end
  end
end
