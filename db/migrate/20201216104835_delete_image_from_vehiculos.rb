class DeleteImageFromVehiculos < ActiveRecord::Migration[6.0]
  def change
    remove_column :vehiculos, :imagenVehiculo
  end
end
