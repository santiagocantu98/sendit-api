class AddAdministradorRefToTicketSoporte < ActiveRecord::Migration[6.0]
  def change
    add_reference :ticket_soportes, :administrador, null: false, foreign_key: { to_table: 'users' }
  end
end
