class CreateUbicacionRecurrentes < ActiveRecord::Migration[6.0]
  def change
    create_table :ubicacion_recurrentes do |t|
      t.string :direccion
      t.decimal :latitud
      t.decimal :longitud

      t.timestamps
    end
  end
end
