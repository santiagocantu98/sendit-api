class ChangeAttributesToBeDecimalInObjetos < ActiveRecord::Migration[6.0]
  def change
    change_column :objetos, :peso, :decimal
    change_column :objetos, :tamano, :decimal
    change_column :objetos, :alto, :decimal
    change_column :objetos, :largo, :decimal
    change_column :objetos, :ancho, :decimal
  end
end
