class AddImageToVehiculos < ActiveRecord::Migration[6.0]
  def change
    add_column :vehiculos, :imagenVehiculo, :text, :limit => 4000000
  end
end
