class AddTipoVehiculoRefToVehiculos < ActiveRecord::Migration[6.0]
  def change
    add_reference :vehiculos, :tipo_vehiculo, null: false, foreign_key: true
  end
end
