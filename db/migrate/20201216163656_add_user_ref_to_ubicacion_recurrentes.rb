class AddUserRefToUbicacionRecurrentes < ActiveRecord::Migration[6.0]
  def change
    add_reference :ubicacion_recurrentes, :user, null: false, foreign_key: true
  end
end
