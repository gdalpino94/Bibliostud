class CreateAnnuncios < ActiveRecord::Migration[5.0]
  def change
    create_table :annuncios do |t|
      t.integer :durata
      t.text :descrizione
      t.float :prezzo
      t.integer :visibilita
      t.string :utente_id
      t.references :utente, index: true

      t.timestamps
    end
    add_index :annuncios, [:utente_id, :created_at]
  end
end
