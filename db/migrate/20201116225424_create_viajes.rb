class CreateViajes < ActiveRecord::Migration[6.0]
  def change
    create_table :viajes do |t|
      t.string :lugarOrigen
      t.string :lugarDestino
      t.datetime :horaEntregadaAcordada
      t.datetime :horaEntrega
      t.datetime :horaRecogida
      t.datetime :horaRecogidaAcordada

      t.timestamps
    end
  end
end
