class CreateObjetos < ActiveRecord::Migration[6.0]
  def change
    create_table :objetos do |t|
      t.integer :peso
      t.integer :tamano
      t.integer :alto
      t.integer :largo
      t.integer :ancho
      t.string :descripcion

      t.timestamps
    end
  end
end
