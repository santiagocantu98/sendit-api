class ChangeDataTypeForEstado < ActiveRecord::Migration[6.0]
  def change
    change_column_null :users, :estado_id, true
  end
end
