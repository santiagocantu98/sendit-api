class AddEstadoToViajes < ActiveRecord::Migration[6.0]
  def change
    add_column :viajes, :estado, :integer
  end
end
