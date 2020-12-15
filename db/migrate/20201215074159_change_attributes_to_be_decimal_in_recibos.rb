class ChangeAttributesToBeDecimalInRecibos < ActiveRecord::Migration[6.0]
  def change
    change_column :recibos, :subtotal, :decimal
    change_column :recibos, :tarifa, :decimal
    change_column :recibos, :iva, :decimal
    change_column :recibos, :total, :decimal
  end
end
