class CreateUbicacionTransportes < ActiveRecord::Migration[6.0]
  def change
    create_table :ubicacion_transportes do |t|
      t.decimal :latitud
      t.decimal :longitud

      t.timestamps
    end
  end
end
