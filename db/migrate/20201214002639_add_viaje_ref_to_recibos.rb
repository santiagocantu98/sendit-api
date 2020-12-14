class AddViajeRefToRecibos < ActiveRecord::Migration[6.0]
  def change
    add_reference :recibos, :viaje, null: false, foreign_key: true
  end
end
