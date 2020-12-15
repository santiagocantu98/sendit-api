class ChangeDataTypeForVehiculoIdInViajes < ActiveRecord::Migration[6.0]
  def change
    change_column_null :viajes, :vehiculo_id, true
  end
end
