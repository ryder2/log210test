class CreateMotifs < ActiveRecord::Migration
  def change
    create_table :motifs do |t|
      t.string :nom

      t.timestamps null: false
    end
  end
end
