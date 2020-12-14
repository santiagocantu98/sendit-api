class AddUserRefToViajes < ActiveRecord::Migration[6.0]
  def change
    add_reference :viajes, :user, null: false, foreign_key: true
  end
end
