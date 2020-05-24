class CreateEventos < ActiveRecord::Migration[5.2]
  def change
    create_table :eventos do |t|
      t.references :comuna, foreign_key: true
      t.text :descripcion
      t.string :organizacion
      t.string :encargado
      t.string :direccion
      t.text :dias_horarios
      t.string :organizador
      t.string :photo

      t.timestamps
    end
  end
end
