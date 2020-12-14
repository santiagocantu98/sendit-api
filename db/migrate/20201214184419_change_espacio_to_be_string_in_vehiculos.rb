class ChangeEspacioToBeStringInVehiculos < ActiveRecord::Migration[6.0]
  def change
    change_column :vehiculos, :espacio, :string
  end
end
