class AddCalificacionPromToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :calificacionProm, :integer
  end
end
