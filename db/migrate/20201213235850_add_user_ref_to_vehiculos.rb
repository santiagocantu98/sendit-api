class AddUserRefToVehiculos < ActiveRecord::Migration[6.0]
  def change
    add_reference :vehiculos, :user, null: false, foreign_key: true
  end
end
