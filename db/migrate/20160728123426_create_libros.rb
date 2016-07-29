class CreateLibros < ActiveRecord::Migration[5.0]
  def change
    create_table :libros do |t|
      t.string :titolo
      t.string :autore
      t.string :ISBN 

      t.timestamps
    end
  end
end
