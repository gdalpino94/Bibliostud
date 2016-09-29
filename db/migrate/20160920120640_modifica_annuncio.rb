class ModificaAnnuncio < ActiveRecord::Migration[5.0]
  def change
  	add_reference :annuncios, :utente, :string
  end
end
