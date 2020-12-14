class AddEstadoRefToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :estado, null: false, foreign_key: true
  end
end
