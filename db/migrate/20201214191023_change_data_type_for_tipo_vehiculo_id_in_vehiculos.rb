class ChangeDataTypeForTipoVehiculoIdInVehiculos < ActiveRecord::Migration[6.0]
  def change
    change_column_null :vehiculos, :tipo_vehiculo_id, true
  end
end
