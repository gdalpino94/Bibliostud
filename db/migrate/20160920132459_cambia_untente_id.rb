class CambiaUntenteId < ActiveRecord::Migration[5.0]
  def up
   change_column :annuncios, :utente_id, :string
  end

  def down
   change_column :annuncios, :utente_id, :integer
  end
end
