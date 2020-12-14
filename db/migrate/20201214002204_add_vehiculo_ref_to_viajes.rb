class AddVehiculoRefToViajes < ActiveRecord::Migration[6.0]
  def change
    add_reference :viajes, :vehiculo, null: false, foreign_key: true
  end
end
