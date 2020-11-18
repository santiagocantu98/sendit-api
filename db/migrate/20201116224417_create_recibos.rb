class CreateRecibos < ActiveRecord::Migration[6.0]
  def change
    create_table :recibos do |t|
      t.integer :subtotal
      t.integer :tarifa
      t.integer :iva
      t.integer :total

      t.timestamps
    end
  end
end
