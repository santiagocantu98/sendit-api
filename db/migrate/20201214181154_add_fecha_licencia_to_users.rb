class AddFechaLicenciaToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :fecha_licencia, :date
  end
end
