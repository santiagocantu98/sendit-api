class CreateTipoVehiculos < ActiveRecord::Migration[6.0]
  def change
    create_table :tipo_vehiculos do |t|
      t.string :descripcion
      t.string :clave

      t.timestamps
    end
  end
end
