class CreateAnnuncios < ActiveRecord::Migration[5.0]
  def change
    create_table :annuncios do |t|
      t.integer :durata
      t.text :descrizione
      t.float :prezzo
      t.integer :visibilita

      t.timestamps
    end
  end
end
