class AddDriverRefToViajes < ActiveRecord::Migration[6.0]
  def change
    add_reference :viajes, :driver, null: false, foreign_key: { to_table: 'users' }
  end
end
