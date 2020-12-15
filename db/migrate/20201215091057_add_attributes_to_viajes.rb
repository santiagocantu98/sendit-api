class AddAttributesToViajes < ActiveRecord::Migration[6.0]
  def change
    add_column :viajes, :latitudOrigen, :decimal
    add_column :viajes, :longitudOrigen, :decimal
    add_column :viajes, :latitudDestino, :decimal
    add_column :viajes, :longitudDestino, :decimal
  end
end
