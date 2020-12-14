class AddCalificacionesToViajes < ActiveRecord::Migration[6.0]
  def change
    add_column :viajes, :calificacionTransportista, :decimal
    add_column :viajes, :calificacionCliente, :decimal
  end
end
