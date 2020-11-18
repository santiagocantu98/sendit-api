class CreateVehiculos < ActiveRecord::Migration[6.0]
  def change
    create_table :vehiculos do |t|
      t.integer :espacio
      t.string :marca
      t.string :modelo
      t.string :color
      t.string :placas

      t.timestamps
    end
  end
end
