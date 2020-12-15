class ChangeDataTypeForAdministradorIdInTicketSoportes < ActiveRecord::Migration[6.0]
  def change
    change_column_null :ticket_soportes, :administrador_id, true
  end
end
