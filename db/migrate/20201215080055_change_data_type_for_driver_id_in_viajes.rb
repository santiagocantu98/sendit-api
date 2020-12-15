class ChangeDataTypeForDriverIdInViajes < ActiveRecord::Migration[6.0]
  def change
    change_column_null :viajes, :driver_id, true
  end
end
