class CreateProjets < ActiveRecord::Migration[6.0]
  def change
    create_table :projets do |t|
      t.string :nom
      t.text :contenu
      t.date :debut
      t.date :fin
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
