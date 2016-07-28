class CreateUtentes < ActiveRecord::Migration[5.0]
  def change
    create_table :utentes do |t|
      t.string :username
      t.string :nome
      t.string :cognome
      t.string :password
      t.string :email
      t.string :telefono

      t.timestamps
    end
  end
end
