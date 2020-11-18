class CreateTicketSoportes < ActiveRecord::Migration[6.0]
  def change
    create_table :ticket_soportes do |t|
      t.string :descripcion
      t.string :estatus
      t.date :fecha

      t.timestamps
    end
  end
end
