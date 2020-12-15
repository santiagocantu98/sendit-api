class AddUserRefToUbicacionTransportes < ActiveRecord::Migration[6.0]
  def change
    add_reference :ubicacion_transportes, :user, null: false, foreign_key: true
  end
end
